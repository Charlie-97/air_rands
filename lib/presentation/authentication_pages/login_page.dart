import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffFBFBFB),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 56.0, 24.0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Logo.png'),
            const Text('Login'),
            const SizedBox(
              height: 40,
            ),
            const AuthTextField(),
            const SizedBox(
              height: 16.0,
            ),
            const AuthTextField(),
            const SizedBox(
              height: 8.0,
            ),
            TextButton(onPressed: () {}, child: const Text('Forgotten Password?')),
            const SizedBox(
              height: 24.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
            const SizedBox(
              height: 8.0,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    const TextSpan(text: 'New to Air-Rands South Africa? '),
                    WidgetSpan(
                        child: TextButton(
                      onPressed: () {},
                      child: const Text('Sign Up'),
                    ))
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class AuthTextField extends StatefulWidget {
  const AuthTextField({super.key});

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField();
  }
}
