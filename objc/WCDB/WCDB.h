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

#ifndef WCDB_h
#define WCDB_h

#ifndef __cplusplus
#error Since WCDB is an Objective-C++ framework, for those files in your project that includes WCDB, you should rename their extension .m to .mm.
#endif

#import <abstract.h>

#import <WCTMaster+WCTTableCoding.h>
#import <WCTMaster.h>
#import <WCTSequence+WCTTableCoding.h>
#import <WCTSequence.h>

#import <WCTDelete.h>
#import <WCTInsert.h>
#import <WCTInterface+ChainCall.h>
#import <WCTMultiSelect.h>
#import <WCTRowSelect.h>
#import <WCTSelect.h>
#import <WCTTable+ChainCall.h>
#import <WCTUpdate.h>

#import <WCTDatabase+Core.h>
#import <WCTInterface+Core.h>

#import <WCTDatabase+Database.h>
#import <WCTDatabase+FTS.h>
#import <WCTDatabase+File.h>
#import <WCTDatabase+RepairKit.h>

#import <WCTDatabase.h>
#import <WCTStatement.h>
#import <WCTTable.h>

#import <WCTAnyProperty.h>
#import <WCTExpr.h>
#import <WCTORM.h>
#import <WCTProperty.h>
#import <WCTResult.h>

#import <WCTInterface+Convenient.h>
#import <WCTTable+Convenient.h>

#import <WCTDatabase+Table.h>
#import <WCTTransaction+Table.h>

#import <WCTDatabase+Transaction.h>
#import <WCTTransaction.h>

#import <WCTChainCall+Statistics.h>
#import <WCTDatabase+Statistics.h>
#import <WCTError.h>
#import <WCTStatistics.h>
#import <WCTTransaction+Statistics.h>

#import <WCTTokenizer+Apple.h>
#import <WCTTokenizer+WCDB.h>

#ifndef WCDB_OMIT_DEPRECATED

#import <WCTCompatible.h>
#import <WCTDatabase+Compatible.h>
#import <WCTStatement+Compatible.h>
#import <WCTStatistics+Compatible.h>
#import <WCTTransaction+Compatible.h>

#endif //WCDB_OMIT_DEPRECATED

#endif /* WCDB_h */
