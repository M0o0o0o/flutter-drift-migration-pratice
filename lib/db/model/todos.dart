import 'package:drift/drift.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 10)();
  TextColumn get content => text().named('body')();
  IntColumn get category => integer().nullable()();
  IntColumn get orders => integer().nullable()(); // v2
  IntColumn get orders2 => integer().nullable()(); // v3
  IntColumn get orders3 => integer().nullable()(); // v3
}
