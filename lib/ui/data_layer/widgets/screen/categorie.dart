import 'package:flutter/material.dart';

import '../../../common/export.dart';

class Categorie extends StatefulWidget {
  Categorie({Key? key}) : super(key: key);

  @override
  State<Categorie> createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Categorie"),),
    );
  }
}
