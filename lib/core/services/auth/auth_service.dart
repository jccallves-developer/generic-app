import 'dart:io';

import 'package:chat/core/models/chat_user.dart';
import 'package:chat/core/services/auth/auth_firebase_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

abstract class AuthService {
  ChatUser? get currentUser;

  Stream<ChatUser?> get userChanges;

  Future<void> signup(
    String nome,
    String email,
    String password,
    File? image,
  );

  Future<void> login(
    String email,
    String password,
  );

  Future<void> logout();

  Future<User?> signInWithGoogle({required BuildContext context});

  Future<void> signOut({required BuildContext context});

  factory AuthService() {
    // return AuthMockService();
    return AuthFirebaseService();
  }
}
