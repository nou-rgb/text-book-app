import 'package:flutter/material.dart';
import '../models/class.dart';
import '../widgets/class_item.dart';

class AcceuilScreen extends StatelessWidget {

  final List<ClassModel> listeclass = [
    ClassModel(id: '1', title: 'Niveau 1', images: 'assets/images/book.png'),
    ClassModel(id: '2', title: 'Niveau 2', images: 'assets/images/book.png'),
    ClassModel(id: '3', title: 'GIT 3', images: 'assets/images/book.png'),
    ClassModel(id: '4', title: 'GIT 4', images: 'assets/images/book.png'),
    ClassModel(id: '5', title: 'GIT 5', images: 'assets/images/book.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acceuil'),
      ),
      body:GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => ClassItem(listeclass[index].id, listeclass[index].title, listeclass[index].images),
                itemCount: listeclass.length,
                padding: const EdgeInsets.all(10.0),
              ),
          );
  }
}
