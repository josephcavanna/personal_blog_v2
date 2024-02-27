import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Auth {
  updatePassword(String password) async {
    try {
      await supabase.auth.updateUser(UserAttributes(password: password));
    } catch (e) {
      if (e is AuthException) {
        return e.message;
      } else {
        return 'Password updated';
      }
    }
  }

  sendResetEmail(String email) async {
    try {
      await supabase.auth.resetPasswordForEmail(email);
    } catch (e) {
      if (e is AuthException) {
        return e.message;
      } else {
        return 'Reset email sent';
      }
    }
  }

  signOut() async {
    try {
    await supabase.auth.signOut();
    }
    catch (e) {
      if (e is AuthException) {
        return e.message;
      } else {
        return 'Signed out';
      }
    }
  }
}