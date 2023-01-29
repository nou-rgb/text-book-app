import 'package:flutter/material.dart';
import '../models/ue.dart';
import '../widgets/ue_item.dart';

class ListUeScreen extends StatelessWidget {
  static const routeName = '/class-ue';

  final List<Ue> listeue = [
    Ue(id: '1', title: 'Dev mobile', enseignant: 'enseignant'),
    Ue(id: '2', title: 'Cloud Computing', enseignant: 'enseignant'),
    Ue(id: '3', title: 'Inteligence Artificiel', enseignant: 'enseignant'),
    Ue(id: '4', title: 'Creation Entreprise', enseignant: 'enseignant'),
  ];

  @override
  Widget build(BuildContext context) {
    final classTitle =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final classId = classTitle['id'];
    final classtitre = classTitle['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(classtitre!),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => UeItem(
            listeue[index].id, listeue[index].title, listeue[index].enseignant),
        itemCount: listeue.length,
        padding: const EdgeInsets.all(10.0),
      ),
    );
  }
}
