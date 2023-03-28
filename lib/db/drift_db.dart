import 'dart:io';

import 'package:dirft_migration_pratice/db/model/todos.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'drift_db.g.dart';

@DriftDatabase(tables: [Todos])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 4;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
        onCreate: (Migrator m) async {},
        onUpgrade: (Migrator m, int from, int to) async {
          if (from < 2) {
            m.addColumn(todos, todos.orders);
          }
          if (from < 3) {
            m.addColumn(todos, todos.orders2);
          }
          if (from < 4) {
            m.addColumn(todos, todos.orders3);
          }
        },
        beforeOpen: (details) async {
          // final m = createMigrator(); // changed to this
          // for (final table in allTables) {
          //   await m.deleteTable(table.actualTableName);
          //   await m.createTable(table);
          // }
          // update(todos).write(TodosCompanion(orders: Value(0)));
        });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(
    () async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'drift.sqlite'));

      return NativeDatabase(file);
    },
  );
}
