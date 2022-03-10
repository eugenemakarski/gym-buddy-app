import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gym_buddy/services/auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const FlutterLogo(
            size: 150,
          ),
          Flexible(
            child: LoginButton(
              text: "Continue as Guest",
              icon: FontAwesomeIcons.userNinja,
              loginMethod: AuthService().guestLogin,
              color: Colors.deepPurple,
            ),
          ),
          Flexible(
            child: LoginButton(
              text: "Login With Google",
              icon: FontAwesomeIcons.google,
              loginMethod: AuthService().googleLogin,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;
  final Function loginMethod;

  const LoginButton(
      {Key? key,
      required this.text,
      required this.color,
      required this.icon,
      required this.loginMethod})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton.icon(
        icon: Icon(icon, color: Colors.white, size: 30),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(16),
          backgroundColor: color,
        ),
        onPressed: () => loginMethod(),
        label: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}
