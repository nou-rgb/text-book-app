import 'package:flutter/material.dart';

class RemplissageUe extends StatefulWidget {
  static const routeName = '/ue-remplissage';
  const RemplissageUe({super.key});

  @override
  State<RemplissageUe> createState() => _RemplissageUeState();
}

class _RemplissageUeState extends State<RemplissageUe> {
  String date = DateTime.now().toString();
  final _intituleCours = TextEditingController();
  final _nomEnseignant = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ueTitle = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(ueTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Entrez la seance du jour',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                  height: 34.0,
                ),
                TextField(
                  controller: _nomEnseignant,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    hintText: "Nom de l'enseignant",
                    prefixIcon: Icon(
                      Icons.edit,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 34.0,
                ),
                TextField(
                  controller: _intituleCours,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    hintText: "Contenue de la seance du jour",
                  ),
                ),
                GestureDetector(
                onTap: (() {
                  
                }),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                    child: Text(
                      'OK',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
