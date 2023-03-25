import 'package:dirft_migration_pratice/db/drift_db.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dbProvider = Provider<LocalDatabase>((ref) {
  return LocalDatabase();
});
