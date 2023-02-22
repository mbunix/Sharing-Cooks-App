// Package imports:
import 'package:path/path.dart';
import 'package:sharing_cooks/application/services/utils.dart';
import 'package:sharing_cooks/infrastructure/repository/migrations.dart';
import 'package:sqflite/sqflite.dart';

Future<T> initDatabase<T extends DatabaseExecutor>(String dbName) async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, dbName);
  return await openDatabase(
    path,
    version: migrations.length + 1,
    onCreate: onCreateCallback,
    onUpgrade: onUpgradeCallback,
  ) as T;
}

Future<void> onCreateCallback(Database db, int version) async {
  await migrate(db, 0, version);
}

Future<void> onUpgradeCallback(
  Database db,
  int oldVersion,
  int newVersion,
) async {
  await migrate(db, oldVersion, newVersion);
}

Future<void> migrate(Database db, int oldVersion, int newVersion) async {
  for (int i = oldVersion; i <= newVersion - 2; i++) {
    try {
      await db.execute(migrations[i]);
    } catch (e) {
      reportErrorToSentry(
        exception: e,
        hint: e.toString(),
      );
    }
  }
}

Future<void> clearDatabaseHelper(String dbName) async {
  final String dbPath = await getDatabasesPath();
  final String path = join(dbPath, dbName);
  deleteDatabase(path);
}
