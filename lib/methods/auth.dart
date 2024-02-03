import 'package:supabase_flutter/supabase_flutter.dart';

final supabase = Supabase.instance.client;

class Auth {
  updatePassword(String password) async {
    final response =
        await supabase.auth.updateUser(UserAttributes(password: password));
        return response;
  }

  currentUserEmail() {
    return supabase.auth.currentUser?.email;
  }
}
