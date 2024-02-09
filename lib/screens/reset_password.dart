import 'package:flutter/material.dart';
import 'package:personal_blog_v2/routing/routes_name.dart';
import '../methods/auth.dart';

class ResetPassword extends StatefulWidget {
  static const String id = RoutesName.resetPassword;
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController repeatPasswordController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final auth = Auth();

  Widget formField(String labelText, TextEditingController controller) {
    return TextField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue[700]!),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black.withOpacity(0.3)),
          borderRadius: BorderRadius.circular(10),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.white),
      ),
      obscureText: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final email = auth.currentUserEmail();
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Form(
          child: SizedBox(
            width: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: const AssetImage('images/appstore.jpg'),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  email ?? 'Bedtime Story AI - Password reset',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                formField('Password', passwordController),
                SizedBox(
                  height: 20,
                ),
                formField('Repeat password', repeatPasswordController),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    if (passwordController.text ==
                        repeatPasswordController.text) {
                      // Update password
                      auth.updatePassword(passwordController.text);
                    } else {
                      showAboutDialog(
                        context: context,
                        children: const [
                          Text('Passwords do not match'),
                        ],
                      );
                    }
                  },
                  child: const Text(
                    'Confirm',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
