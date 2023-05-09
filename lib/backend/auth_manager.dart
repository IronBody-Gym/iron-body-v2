

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iron_body/backend/auth.dart';
import 'package:iron_body/backend/firebase_user_provider.dart';

import 'base_auth_user_provider.dart';

class AuthManager {
   Future<BaseAuthUser?> signIn(
    BuildContext context,
        String email,
    String password,
  ) async {
    try {
      final userCredential = await emailSignInFunc(email,password);
      if (userCredential?.user != null) {
        // await maybeCreateUser(userCredential!.user!);

      }
      return userCredential == null
          ? null
          : IronBodyFirebaseUser.fromUserCredential(userCredential);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.message!}')),
      );
      return null;
    }
  }


  Future<BaseAuthUser?> createUser(
    BuildContext context,
        String email,
    String password,
  ) async {
    try {
      final userCredential = await emailCreateAccountFunc(email,password);
      if (userCredential?.user != null) {

      }
      return userCredential == null
          ? null
          : IronBodyFirebaseUser.fromUserCredential(userCredential);
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.message!}')),
      );
      return null;
    }
  }
}