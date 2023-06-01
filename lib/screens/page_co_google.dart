import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleLoginPage extends StatelessWidget {
  final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);

  void _signInWithGoogle(BuildContext context) async {
    try {
      await googleSignIn.signIn();
    } catch (error) {
      print('Erreur lors de la connexion avec Google: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page de connexion Google')),
      body: Center(
        child: RaisedButton(
          onPressed: () => _signInWithGoogle(context),
          child: Text('Se connecter avec Google'),
        ),
      ),
    );
  }
}
