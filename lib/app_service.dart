// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sharing_cooks/domain/entities/chat/message.dart';
import 'package:supabase/src/supabase_stream_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AppService extends ChangeNotifier {
  static SupabaseClient supabaseClient = Supabase.instance.client;
  final String _password = 'PfNNpwyL6infYBz';

  Future<void> _createUser(int i) async {
    final AuthResponse response = await supabaseClient.auth
        .signUp(email: 'test_$i@test.com', password: _password);

    await supabaseClient.from('contact').insert(<String, dynamic>{
      'id': response.user!.id,
      'username': 'User $i',
    }).execute();
  }

  Future<void> createUsers() async {
    await _createUser(1);
    await _createUser(2);
  }

  Future<Map<String, dynamic>> createNewUser(
    String email,
    String username,
    String password,
  ) async {
    final AuthResponse response =
        await supabaseClient.auth.signUp(email: email, password: password);

    final PostgrestResponse<dynamic> postgresResponse = await supabaseClient
        .from('contact')
        .insert(<String, dynamic>{
      'id': response.user!.id,
      'username': username,
    }).execute();
    return <String, dynamic>{
      'auth_response': response,
      'postgres_response': postgresResponse,
    };
  }

  Future<void> signIn(int i) async {
    await supabaseClient.auth
        .signInWithPassword(email: 'test_$i@test.com', password: _password);
  }

  Future<Map<String, dynamic>> signInUser(
    String email,
    String password,
  ) async {
    final AuthResponse response = await supabaseClient.auth
        .signInWithPassword(email: email, password: password);
    return <String, dynamic>{
      'auth_response': response,
    };
  }

  Future<void> signOut() async {
    await supabaseClient.auth.signOut();
  }

  Future<String> _getUserTo() async {
    final PostgrestResponse<dynamic> response = await supabaseClient
        .from('contact')
        .select('id')
        .not('id', 'eq', getCurrentUserId())
        .execute();

    return response.data[0]['id'];
  }

  Stream<List<Message>> getMessages() {
    return supabaseClient
        .from('message')
        .stream(primaryKey: <String>['id'])
        .order('created_at')
        .execute()
        .map(
          (SupabaseStreamEvent maps) => maps
              .map(
                (Map<String, dynamic> item) =>
                    Message.fromJson(item, getCurrentUserId()),
              )
              .toList(),
        );
  }

  Future<void> saveMessage(String content) async {
    final String userTo = await _getUserTo();

    final Message message = Message.create(
      content: content,
      userFrom: getCurrentUserId(),
      userTo: userTo,
    );

    await supabaseClient.from('message').insert(message.toMap()).execute();
  }

  Future<void> markAsRead(String messageId) async {
    await supabaseClient
        .from('message')
        .update(<String, dynamic>{'mark_as_read': true})
        .eq('id', messageId)
        .execute();
  }

  bool isAuthentificated() => supabaseClient.auth.currentUser != null;

  String getCurrentUserId() =>
      isAuthentificated() ? supabaseClient.auth.currentUser!.id : '';

  String getCurrentUserEmail() =>
      isAuthentificated() ? supabaseClient.auth.currentUser!.email ?? '' : '';
}
