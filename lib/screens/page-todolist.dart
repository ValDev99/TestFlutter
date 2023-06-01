import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class pageListe extends StatelessWidget {
  const pageListe ({Key? key}) : super(key: key) ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Test Weo")
      ),
    body: Center(
      child:  Text('Bienvenue sur votre TodoList !'),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.language),
    ),
    );
  }
}

// import 'dart:io';

// void main() {
//   List<String> toDoList = [];

//   while (true) {
//     print('Que voulez-vous faire ?');
//     print('1. Ajouter une tâche');
//     print('2. Afficher la liste');
//     print('3. Supprimer une tâche');
//     print('4. Quitter');

//     String choice = stdin.readLineSync()!;

//     switch (choice) {
//       case '1':
//         addTask(toDoList);
//         break;
//       case '2':
//         showList(toDoList);
//         break;
//       case '3':
//         removeTask(toDoList);
//         break;
//       case '4':
//         exit(0);
//         break;
//       default:
//         print('Choix invalide. Veuillez réessayer.');
//         break;
//     }
//   }
// }

// void addTask(List<String> toDoList) {
//   print('Entrez la tâche à ajouter :');
//   String task = stdin.readLineSync()!;
//   toDoList.add(task);
//   print('Tâche ajoutée !');
// }

// void showList(List<String> toDoList) {
//   if (toDoList.isEmpty) {
//     print('La liste est vide.');
//   } else {
//     print('Liste des tâches :');
//     for (int i = 0; i < toDoList.length; i++) {
//       print('${i + 1}. ${toDoList[i]}');
//     }
//   }
// }

// void removeTask(List<String> toDoList) {
//   showList(toDoList);
//   if (toDoList.isEmpty) {
//     return;
//   }
//   print('Entrez le numéro de la tâche à supprimer :');
//   String input = stdin.readLineSync()!;
//   int index = int.tryParse(input)! - 1;
//   if (index < 0 || index >= toDoList.length) {
//     print('Numéro de tâche invalide.');
//   } else {
//     String task = toDoList.removeAt(index);
//     print('Tâche "$task" supprimée.');
//   }
// }
