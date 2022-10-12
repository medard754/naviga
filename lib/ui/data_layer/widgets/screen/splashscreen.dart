import 'package:flutter/material.dart';

import 'package:tp_max/ui/data_layer/widgets/index.dart';


class Splash extends StatefulWidget {
  Splash({Key? key}) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
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
      body: Center(
        child: Text("New"),
      ),
    );
  }
}
/*
SplashScreen(
      seconds:5000,
      navigateAfterSeconds: Hello(),
      title:Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
    );*/