import 'package:flutter/material.dart';
import 'package:personal_blog_v2/routing/routes_name.dart';
import '../methods/auth.dart';
import 'home_page.dart';

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
  final _formKey = GlobalKey<FormState>();

  Widget formField(String labelText, TextEditingController controller) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a new password';
        } else if (passwordController.text != repeatPasswordController.text) {
          return 'Passwords do not match';
        } else {
          return null;
        }
      },
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
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Form(
          key: _formKey,
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
                  supabase.auth.currentUser?.email ?? 'No token',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                formField('New password', passwordController),
                SizedBox(
                  height: 20,
                ),
                formField('Confirm password', repeatPasswordController),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: resetPassword,
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

  resetPassword() async {
    if (_formKey.currentState!.validate()) {
      final response = await auth.updatePassword(passwordController.text);
      if (response == null) {
        await auth.signOut();
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Password updated'),
                content:
                    const Text('Press OK to be redirected to the home page.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const HomePage();
        }));
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(response),
          ),
        );
      }
    }
  }
}
