######################################################################
# Automatically generated by qmake (3.1) Tue Sep 4 15:59:14 2018
######################################################################

TEMPLATE = app
TARGET = WCDB
INCLUDEPATH += $${PWD} \
               $${PWD}/abstract \
               $${PWD}/interface \
               $${PWD}/util

# The following define makes your compiler warn you if you use any
# feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Input
HEADERS += WCDB.h \
           abstract/abstract.h \
           abstract/clause_join.hpp \
           abstract/column.hpp \
           abstract/column_def.hpp \
           abstract/column_index.hpp \
           abstract/column_result.hpp \
           abstract/column_type.hpp \
           abstract/conflict.hpp \
           abstract/constraint_table.hpp \
           abstract/declare.hpp \
           abstract/describable.hpp \
           abstract/expr.hpp \
           abstract/foreign_key.hpp \
           abstract/fts_module.hpp \
           abstract/fts_modules.hpp \
           abstract/handle.hpp \
           abstract/handle_statement.hpp \
           abstract/literal_value.hpp \
           abstract/module_argument.hpp \
           abstract/order.hpp \
           abstract/order_term.hpp \
           abstract/pragma.hpp \
           abstract/statement.hpp \
           abstract/statement_alter_table.hpp \
           abstract/statement_attach.hpp \
           abstract/statement_create_index.hpp \
           abstract/statement_create_table.hpp \
           abstract/statement_create_virtual_table.hpp \
           abstract/statement_delete.hpp \
           abstract/statement_detach.hpp \
           abstract/statement_drop_index.hpp \
           abstract/statement_drop_table.hpp \
           abstract/statement_explain.hpp \
           abstract/statement_insert.hpp \
           abstract/statement_pragma.hpp \
           abstract/statement_reindex.hpp \
           abstract/statement_release.hpp \
           abstract/statement_rollback.hpp \
           abstract/statement_savepoint.hpp \
           abstract/statement_select.hpp \
           abstract/statement_transaction.hpp \
           abstract/statement_update.hpp \
           abstract/statement_vacuum.hpp \
           abstract/subquery.hpp \
           core/config.hpp \
           core/core_base.hpp \
           core/database.hpp \
           core/handle_pool.hpp \
           core/handle_recyclable.hpp \
           core/statement_recyclable.hpp \
           core/tokenizer.hpp \
           core/transaction.hpp \
           util/concurrent_list.hpp \
           util/error.hpp \
           util/file.hpp \
           util/macro.hpp \
           util/path.hpp \
           util/recyclable.hpp \
           util/rwlock.hpp \
           util/spin.hpp \
           util/thread_local.hpp \
           util/ticker.hpp \
           util/timed_queue.hpp \
           util/utility.hpp \
           interface/builtin/WCTMaster+WCTTableCoding.h \
           interface/builtin/WCTMaster.h \
           interface/builtin/WCTSequence+WCTTableCoding.h \
           interface/builtin/WCTSequence.h \
           interface/chaincall/WCTChainCall+Private.h \
           interface/chaincall/WCTChainCall.h \
           interface/chaincall/WCTDelete+Private.h \
           interface/chaincall/WCTDelete.h \
           interface/chaincall/WCTInsert+Private.h \
           interface/chaincall/WCTInsert.h \
           interface/chaincall/WCTInterface+ChainCall.h \
           interface/chaincall/WCTMultiSelect+Private.h \
           interface/chaincall/WCTMultiSelect.h \
           interface/chaincall/WCTRowSelect+Private.h \
           interface/chaincall/WCTRowSelect.h \
           interface/chaincall/WCTSelect+Private.h \
           interface/chaincall/WCTSelect.h \
           interface/chaincall/WCTSelectBase+NoARC.h \
           interface/chaincall/WCTSelectBase+Private.h \
           interface/chaincall/WCTSelectBase.h \
           interface/chaincall/WCTTable+ChainCall.h \
           interface/chaincall/WCTUpdate+Private.h \
           interface/chaincall/WCTUpdate.h \
           interface/compatible/WCTCompatible.h \
           interface/compatible/WCTDatabase+Compatible.h \
           interface/compatible/WCTStatement+Compatible.h \
           interface/compatible/WCTStatistics+Compatible.h \
           interface/compatible/WCTTransaction+Compatible.h \
           interface/convenient/WCTInterface+Convenient.h \
           interface/convenient/WCTTable+Convenient.h \
           interface/core/WCTCore+Private.h \
           interface/core/WCTCore.h \
           interface/core/WCTDatabase+Core.h \
           interface/core/WCTInterface+Core.h \
           interface/core/WCTStatement+Private.h \
           interface/core/WCTStatement.h \
           interface/core/WCTValue.h \
           interface/database/WCTDatabase+Database.h \
           interface/database/WCTDatabase+File.h \
           interface/database/WCTDatabase+Private.h \
           interface/database/WCTDatabase+RepairKit.h \
           interface/declare/WCTDatabase.h \
           interface/declare/WCTDeclare.h \
           interface/declare/WCTInterface.h \
           interface/declare/WCTTable.h \
           interface/fts/WCTDatabase+FTS.h \
           interface/fts/WCTTokenizer+Apple.h \
           interface/fts/WCTTokenizer+WCDB.h \
           interface/orm/WCTORM.h \
           interface/statictics/WCTChainCall+Statistics.h \
           interface/statictics/WCTDatabase+Statistics.h \
           interface/statictics/WCTError+Private.h \
           interface/statictics/WCTError.h \
           interface/statictics/WCTStatistics.h \
           interface/statictics/WCTTransaction+Statistics.h \
           interface/table/WCTDatabase+Table.h \
           interface/table/WCTInterface+Table.h \
           interface/table/WCTTable+Database.h \
           interface/table/WCTTable+Private.h \
           interface/table/WCTTransaction+Table.h \
           interface/transaction/WCTDatabase+Transaction.h \
           interface/transaction/WCTTransaction+Private.h \
           interface/transaction/WCTTransaction.h \
           interface/orm/accessor/WCTBaseAccessor.h \
           interface/orm/accessor/WCTCppAccessor.h \
           interface/orm/accessor/WCTObjCAccessor.h \
           interface/orm/accessor/WCTRuntimeBaseAccessor.h \
           interface/orm/accessor/WCTRuntimeCppAccessor.h \
           interface/orm/accessor/WCTRuntimeObjCAccessor.h \
           interface/orm/binding/WCTBinding.h \
           interface/orm/binding/WCTColumnBinding.h \
           interface/orm/binding/WCTConstraintBinding.h \
           interface/orm/binding/WCTIndexBinding.h \
           interface/orm/coding/WCTAnyProperty.h \
           interface/orm/coding/WCTCoding.h \
           interface/orm/coding/WCTExpr.h \
           interface/orm/coding/WCTProperty.h \
           interface/orm/coding/WCTPropertyBase.h \
           interface/orm/coding/WCTResult.h \
           interface/orm/coding/WCTSelectBase+WCTExpr.h \
           interface/orm/macro/WCTCodingMacro.h \
           interface/orm/macro/WCTConstraintMacro.h \
           interface/orm/macro/WCTIndexMacro.h \
           interface/orm/macro/WCTMacroHelper.h \
           interface/orm/macro/WCTPropertyMacro.h
SOURCES += abstract/clause_join.cpp \
           abstract/column.cpp \
           abstract/column_def.cpp \
           abstract/column_index.cpp \
           abstract/column_result.cpp \
           abstract/column_type.cpp \
           abstract/conflict.cpp \
           abstract/constraint_table.cpp \
           abstract/describable.cpp \
           abstract/expr.cpp \
           abstract/foreign_key.cpp \
           abstract/fts_module.cpp \
           abstract/fts_modules.cpp \
           abstract/handle.cpp \
           abstract/handle_statement.cpp \
           abstract/literal_value.cpp \
           abstract/module_argument.cpp \
           abstract/order.cpp \
           abstract/order_term.cpp \
           abstract/pragma.cpp \
           abstract/statement.cpp \
           abstract/statement_alter_table.cpp \
           abstract/statement_attach.cpp \
           abstract/statement_create_index.cpp \
           abstract/statement_create_table.cpp \
           abstract/statement_create_virtual_table.cpp \
           abstract/statement_delete.cpp \
           abstract/statement_detach.cpp \
           abstract/statement_drop_index.cpp \
           abstract/statement_drop_table.cpp \
           abstract/statement_explain.cpp \
           abstract/statement_insert.cpp \
           abstract/statement_pragma.cpp \
           abstract/statement_reindex.cpp \
           abstract/statement_release.cpp \
           abstract/statement_rollback.cpp \
           abstract/statement_savepoint.cpp \
           abstract/statement_select.cpp \
           abstract/statement_transaction.cpp \
           abstract/statement_update.cpp \
           abstract/statement_vacuum.cpp \
           abstract/subquery.cpp \
           core/config.cpp \
           core/core_base.cpp \
           core/database.cpp \
           core/database_config.cpp \
           core/database_file.cpp \
           core/database_repair_kit.cpp \
           core/database_sql.cpp \
           core/database_transaction.cpp \
           core/handle_pool.cpp \
           core/handle_recyclable.cpp \
           core/statement_recyclable.cpp \
           core/tokenizer.cpp \
           core/transaction.cpp \
           util/error.cpp \
           util/file.cpp \
           util/path.cpp \
           util/rwlock.cpp \
           util/spin.cpp \
           util/ticker.cpp \
           interface/builtin/NSData+WCTColumnCoding.cpp \
           interface/builtin/NSDate+WCTColumnCoding.cpp \
           interface/builtin/NSNumber+WCTColumnCoding.cpp \
           interface/builtin/NSObject+WCTColumnCoding.cpp \
           interface/builtin/NSString+WCTColumnCoding.cpp \
           interface/builtin/WCTMaster.cpp \
           interface/builtin/WCTSequence.cpp \
           interface/chaincall/WCTChainCall.cpp \
           interface/chaincall/WCTDelete.cpp \
           interface/chaincall/WCTInsert.cpp \
           interface/chaincall/WCTInterface+ChainCall.cpp \
           interface/chaincall/WCTMultiSelect.cpp \
           interface/chaincall/WCTRowSelect.cpp \
           interface/chaincall/WCTSelect.cpp \
           interface/chaincall/WCTSelectBase+NoARC.cpp \
           interface/chaincall/WCTSelectBase.cpp \
           interface/chaincall/WCTTable+ChainCall.cpp \
           interface/chaincall/WCTUpdate.cpp \
           interface/compatible/WCTCompatible.cpp \
           interface/compatible/WCTDatabase+Compatible.cpp \
           interface/compatible/WCTStatement+Compatible.cpp \
           interface/compatible/WCTStatistics+Compatible.cpp \
           interface/compatible/WCTTransaction+Compatible.cpp \
           interface/convenient/WCTInterface+Convenient.cpp \
           interface/convenient/WCTTable+Convenient.cpp \
           interface/core/WCTCore.cpp \
           interface/core/WCTDatabase+Core.cpp \
           interface/core/WCTInterface+Core.cpp \
           interface/core/WCTStatement.cpp \
           interface/core/WCTValue.cpp \
           interface/database/WCTDatabase+Database.cpp \
           interface/database/WCTDatabase+File.cpp \
           interface/database/WCTDatabase+RepairKit.cpp \
           interface/declare/WCTDatabase.cpp \
           interface/declare/WCTInterface.cpp \
           interface/declare/WCTTable.cpp \
           interface/fts/WCTDatabase+FTS.cpp \
           interface/fts/WCTTokenizer+Apple.cpp \
           interface/fts/WCTTokenizer+WCDB.cpp \
           interface/statictics/WCTChainCall+Statistics.cpp \
           interface/statictics/WCTDatabase+Statistics.cpp \
           interface/statictics/WCTError.cpp \
           interface/statictics/WCTStatistics.cpp \
           interface/statictics/WCTTransaction+Statistics.cpp \
           interface/table/WCTDatabase+Table.cpp \
           interface/table/WCTInterface+Table.cpp \
           interface/table/WCTTransaction+Table.cpp \
           interface/transaction/WCTDatabase+Transaction.cpp \
           interface/transaction/WCTTransaction.cpp \
           interface/orm/accessor/WCTRuntimeBaseAccessor.cpp \
           interface/orm/accessor/WCTRuntimeObjCAccessor.cpp \
           interface/orm/binding/WCTBinding.cpp \
           interface/orm/binding/WCTColumnBinding.cpp \
           interface/orm/binding/WCTConstraintBinding.cpp \
           interface/orm/binding/WCTIndexBInding.cpp \
           interface/orm/coding/WCTAnyProperty.cpp \
           interface/orm/coding/WCTExpr.cpp \
           interface/orm/coding/WCTProperty.cpp \
           interface/orm/coding/WCTPropertyBase.cpp \
           interface/orm/coding/WCTResult.cpp \
           interface/orm/coding/WCTSelectBase+WCTExpr.cpp
