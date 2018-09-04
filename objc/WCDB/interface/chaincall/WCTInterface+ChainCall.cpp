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

#import <WCTCoding.h>
#import <WCTDelete+Private.h>
#import <WCTDelete.h>
#import <WCTExpr.h>
#import <WCTInsert+Private.h>
#import <WCTInsert.h>
#import <WCTInterface+ChainCall.h>
#import <WCTMultiSelect+Private.h>
#import <WCTMultiSelect.h>
#import <WCTProperty.h>
#import <WCTResult.h>
#import <WCTRowSelect+Private.h>
#import <WCTRowSelect.h>
#import <WCTSelect+Private.h>
#import <WCTSelect.h>
#import <WCTUpdate+Private.h>
#import <WCTUpdate.h>

@implementation WCTInterface (ChainCall)

- (WCTInsert *)prepareInsertObjectsOfClass:(Class)cls into:(NSString *)tableName
{
    return [[WCTInsert alloc] initWithCore:_core andClass:cls andTableName:tableName andReplaceFlag:NO];
}

- (WCTInsert *)prepareInsertOrReplaceObjectsOfClass:(Class)cls into:(NSString *)tableName
{
    return [[WCTInsert alloc] initWithCore:_core andClass:cls andTableName:tableName andReplaceFlag:YES];
}

- (WCTInsert *)prepareInsertObjectsOnProperties:(const WCTPropertyList &)propertyList into:(NSString *)tableName
{
    return [[WCTInsert alloc] initWithCore:_core andProperties:propertyList andTableName:tableName andReplaceFlag:NO];
}

- (WCTInsert *)prepareInsertOrReplaceObjectsOnProperties:(const WCTPropertyList &)propertyList into:(NSString *)tableName
{
    return [[WCTInsert alloc] initWithCore:_core andProperties:propertyList andTableName:tableName andReplaceFlag:YES];
}

- (WCTDelete *)prepareDeleteFromTable:(NSString *)tableName
{
    return [[WCTDelete alloc] initWithCore:_core andTableName:tableName];
}

- (WCTUpdate *)prepareUpdateTable:(NSString *)tableName onProperties:(const WCTPropertyList &)propertyList
{
    return [[WCTUpdate alloc] initWithCore:_core andProperties:propertyList andTableName:tableName];
}

- (WCTSelect *)prepareSelectObjectsOfClass:(Class)cls fromTable:(NSString *)tableName
{
    return [[WCTSelect alloc] initWithCore:_core andResults:[cls AllProperties] fromTable:tableName];
}

- (WCTSelect *)prepareSelectObjectsOnResults:(const WCTResultList &)resultList fromTable:(NSString *)tableName
{
    return [[WCTSelect alloc] initWithCore:_core andResults:resultList fromTable:tableName];
}

- (WCTRowSelect *)prepareSelectRowsOnResults:(const WCTResultList &)resultList fromTable:(NSString *)tableName
{
    return [[WCTRowSelect alloc] initWithCore:_core andResults:resultList fromTable:tableName];
}

- (WCTRowSelect *)prepareSelectRowsOnResults:(const WCTResultList &)resultList fromTables:(NSArray<NSString *> *)tableNames
{
    return [[WCTRowSelect alloc] initWithCore:_core andResults:resultList fromTables:tableNames];
}

- (WCTMultiSelect *)prepareSelectMultiObjectsOnResults:(const WCTResultList &)resultList fromTables:(NSArray<NSString *> *)tableNames
{
    return [[WCTMultiSelect alloc] initWithCore:_core andResults:resultList fromTables:tableNames];
}

@end
