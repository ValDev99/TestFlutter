import 'package:flutter/material.dart';
import 'page_co_google.dart';

// J'ai donc commencer par créer un dossier pour y mettre mes 2 pages demandées (connexion et todolist) et je crée donc mes deux pages dans lequelles j'ajoute des widgets pour construire mes pages

class pageCo extends StatelessWidget {
  const pageCo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test Weo")),
      // body: Center(
      //   child: Text('Bienvenue sur votre espace de connexion Google !'),
      // ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GoogleLoginPage()),
            );
          },
          child: Text('Se connecter avec Google'),
        ),
      ),
    );
  }

 
  
}


