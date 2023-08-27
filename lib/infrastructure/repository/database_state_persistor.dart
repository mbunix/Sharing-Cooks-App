// Flutter imports:

// Flutter imports:
import 'package:async_redux/async_redux.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/states/bottom_nav_state.dart';
import 'package:sharing_cooks/application/redux/states/client_state.dart';
import 'package:sharing_cooks/application/redux/states/connectivity_state.dart';
import 'package:sharing_cooks/application/redux/states/content_state.dart';
import 'package:sharing_cooks/application/redux/states/cook_state.dart';
import 'package:sharing_cooks/application/redux/states/misc_state.dart';
import 'package:sharing_cooks/application/redux/states/onboarding_state.dart';
import 'package:sharing_cooks/domain/entities/core/auth_credentials.dart';
import 'package:sharing_cooks/infrastructure/repository/database_base.dart';
import 'package:sharing_cooks/infrastructure/repository/database_mobile.dart';
import 'package:sharing_cooks/infrastructure/repository/initialize_db.dart';

// Package imports:
import 'package:sqflite/sqflite.dart';

// Project imports:

/// [SharingCooksStateDatabase] is the middleware that interacts with the database on behalf
/// of the application. From the apps perspective, it doesn't care which database
/// its saving its state on. MyAfyaHubStateDatabase therefore offers different implementations
/// for its method.
class SharingCooksStateDatabase implements PersistorPrinterDecorator<AppState> {
  SharingCooksStateDatabase({
    Duration throttle = const Duration(seconds: 2),
    Duration saveDuration = Duration.zero,
    required this.dataBaseName,
  })  : _throttle = throttle,
        _saveDuration = saveDuration;

  final String dataBaseName;

  final Duration _saveDuration;
  final Duration _throttle;

  @override
  Future<void> deleteState() async {
    await SharingCooksDatabaseMobile<Database>(
      initializeDB: InitializeDB<Database>(dbName: this.dataBaseName),
    ).clearDatabase();
  }

  @override
  Future<void> persistDifference({
    AppState? lastPersistedState,
    required AppState newState,
  }) async {
    await Future<dynamic>.delayed(saveDuration);

    if (lastPersistedState == null ||
        lastPersistedState.credentials != newState.credentials ||
        lastPersistedState.clientState != newState.clientState ||
        lastPersistedState.onboardingState != newState.onboardingState ||
        lastPersistedState.bottomNavigationState !=
            newState.bottomNavigationState ||
        lastPersistedState.connectivityState != newState.connectivityState ||
        lastPersistedState.miscState != newState.miscState ||
        lastPersistedState.contentState != newState.contentState ||
        lastPersistedState.cookState != newState.cookState) {
      await persistState(
        newState,
        SharingCooksDatabaseMobile<Database>(
          initializeDB: InitializeDB<Database>(dbName: this.dataBaseName),
        ),
      );
    }
  }

  /// we first check whether the database is empty
  ///
  /// - if the database is empty, we return null
  /// - else, we retrieve the state from the database
  @override
  Future<AppState> readState() async {
    if (await SharingCooksDatabaseMobile<Database>(
      initializeDB: InitializeDB<Database>(dbName: this.dataBaseName),
    ).isDatabaseEmpty()) {
      return AppState.initial();
    } else {
      return retrieveState(
        SharingCooksDatabaseMobile<Database>(
          initializeDB: InitializeDB<Database>(dbName: this.dataBaseName),
        ),
      );
    }
  }

  @override
  Future<void> saveInitialState(AppState state) async =>
      persistDifference(newState: state);

  @override
  Duration get throttle => _throttle;

  Duration get saveDuration => _saveDuration;

  Future<void> init() async {
    await SharingCooksDatabaseMobile<Database>(
      initializeDB: InitializeDB<Database>(dbName: this.dataBaseName),
    ).database;
  }

  /// saves app state to the database
  @visibleForTesting
  Future<void>persistState(
    AppState newState,
    SharingCooksDatabaseBase<dynamic> database,
  ) async {
    // save credentials state
    await database.saveState(
      data: newState.credentials!.toJson(),
      table: Tables.credentials,
    );

    // save clientState state
    await database.saveState(
      data: newState.clientState!.toJson(),
      table: Tables.clientState,
    );

    // save onboardingState state
    await database.saveState(
      data: newState.onboardingState!.toJson(),
      table: Tables.onboardingState,
    );

    // save bottomNavigationState state
    await database.saveState(
      data: newState.bottomNavigationState!.toJson(),
      table: Tables.bottomNavigationState,
    );

    // save connectivityState state
    await database.saveState(
      data: newState.connectivityState!.toJson(),
      table: Tables.connectivityState,
    );

    // save contentState state
    await database.saveState(
      data: newState.contentState!.toJson(),
      table: Tables.contentState,
    );

    // save miscState state
    await database.saveState(
      data: newState.miscState!.toJson(),
      table: Tables.miscState,
    );

    // save caregiverState state
    await database.saveState(
      data: newState.cookState!.toJson(),
      table: Tables.cookState,
    );
  }

  /// retrieves app state to the database
  @visibleForTesting
  Future<AppState> retrieveState(
    SharingCooksDatabaseBase<dynamic> database,
  ) async {
    return AppState().copyWith(
      // retrieve user state
      credentials: AuthCredentials.fromJson(
        await database.retrieveState(Tables.credentials),
      ),

      clientState: ClientState.fromJson(
        await database.retrieveState(Tables.clientState),
      ),

      onboardingState: OnboardingState.fromJson(
        await database.retrieveState(Tables.onboardingState),
      ),

      bottomNavigationState: BottomNavigationState.fromJson(
        await database.retrieveState(Tables.bottomNavigationState),
      ),

      connectivityState: ConnectivityState.fromJson(
        await database.retrieveState(Tables.connectivityState),
      ),

      contentState: ContentState.fromJson(
        await database.retrieveState(Tables.contentState),
      ),

      miscState: MiscState.fromJson(
        await database.retrieveState(Tables.miscState),
      ),

      cookState: CookState.fromJson(
        await database.retrieveState(Tables.cookState),
      ),

      wait: Wait(),
    );
  }
}
