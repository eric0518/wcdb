/*
 * Tencent is pleased to support the open source community by making
 * WCDB available.
 *
 * Copyright (C) 2017 THL A29 Limited, a Tencent company.
 * All rights reserved.
 *
 * Licensed under the BSD 3-Clause License (the "License"); you may not use
 * this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 *       https://opensource.org/licenses/BSD-3-Clause
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <WCDB/Notifier.hpp>
#include <iostream>

namespace WCDB {

Notifier *Notifier::shared()
{
    static Notifier *notifier = new Notifier;
    return notifier;
}

void Notifier::logger(const Error &error)
{
    bool log = error.level != Error::Level::Ignore
#ifndef DEBUG
               && error.level != Error::Level::Debug
#endif
        ;

    if (log) {
        std::ostringstream stream;
        stream << "[" << Error::levelName(error.level) << ": ";
        stream << (int) error.code();
        if (!error.message.empty()) {
            stream << ", " << error.message;
        }
        stream << "]";

        for (const auto &info : error.infos.getIntegers()) {
            stream << ", " << info.first << ": " << info.second;
        }
        for (const auto &info : error.infos.getStrings()) {
            stream << ", " << info.first << ": " << info.second;
        }
        for (const auto &info : error.infos.getDoubles()) {
            stream << ", " << info.first << ": " << info.second;
        }
        stream << std::endl;
        std::cout << stream.str();
#ifdef DEBUG
        if (error.level >= Error::Level::Error) {
            std::cout << "Set breakpoint in Notifier::logger to debug.\n";
        }
#endif
    }

    if (error.level == Error::Level::Fatal) {
        abort();
    }
}

Notifier::Notifier()
{
    m_callbacks["default"] = Notifier::logger;
}

void Notifier::setNotification(const std::string &name,
                               const Callback &callback)
{
    LockGuard lockGuard(m_lock);
    auto iter = m_callbacks.find(name);
    if (iter != m_callbacks.end()) {
        if (callback) {
            iter->second = callback;
        } else {
            m_callbacks.erase(iter);
        }
    } else {
        m_callbacks.insert({name, callback});
    }
}

void Notifier::setCorruptionNotification(const CorruptionCallback &callback)
{
    LockGuard lockGuard(m_lock);
    m_corruptionCallback = callback;
}

void Notifier::onNotified(const Error &error) const
{
    SharedLockGuard lockGuard(m_lock);
    for (const auto &element : m_callbacks) {
        element.second(error);
    }
}

void Notifier::onCorrupted(const std::string &path) const
{
    if (m_corruptionCallback) {
        m_corruptionCallback(path);
    }
}

void Notifier::notify(const Error &error) const
{
    if (error.isCorruption()) {
        const auto &infos = error.infos.getStrings();
        auto iter = infos.find("Path");
        if (iter != infos.end()) {
            onCorrupted(iter->second);
        }
    }
    onNotified(error);
}

void Notifier::fatal(const std::string &message, const char *file, int line)
{
    error(Error::Level::Fatal, message, file, line);
}

void Notifier::error(const std::string &message, const char *file, int line)
{
    error(Error::Level::Error, message, file, line);
}

void Notifier::warning(const std::string &message, const char *file, int line)
{
    error(Error::Level::Warning, message, file, line);
}

void Notifier::error(Error::Level level,
                     const std::string &message,
                     const char *file,
                     int line)
{
    Error error;
    error.setCode(Error::Code::Misuse, "Assertion");
    error.level = level;
    error.message = message;
    if (file) {
        error.infos.set("File", file);
    }
    error.infos.set("Line", line);
    Notifier::shared()->notify(error);
}

} //namespace WCDB
