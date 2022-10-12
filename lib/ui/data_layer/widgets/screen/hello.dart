import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  final int delay = 5000;
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: delay), () {});
    //Get.to(Hello());
    Navigator.push(context, 
          MaterialPageRoute(builder: (context)=> Hello())
      );
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Text("Hello le mondenaviga")
      )
    );
  }
}
