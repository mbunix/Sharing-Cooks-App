// Package imports:
import 'package:sharing_cooks/infrastructure/repository/sqlite.dart';
import 'package:sqflite/sqflite.dart';

abstract class MyAfyaHubStateDatabase extends Database {}

class InitializeDB<T extends DatabaseExecutor> extends InitializeDBHelper<T> {
  InitializeDB({
    required super.dbName,
  });
}

abstract class InitializeDBHelper<T extends DatabaseExecutor> {
  final String dbName;
  InitializeDBHelper({required this.dbName});

  Future<T> database({T? preInitializedDB}) async {
    return preInitializedDB != null
        ? Future<T>.value(preInitializedDB)
        : initDatabase<T>(dbName);
  }
}
