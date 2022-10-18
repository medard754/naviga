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
    Navigator.push(context, MaterialPageRoute(builder: (context) => Hello()));
  }

  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size ;
    return Scaffold(body: Container(
      height: size.height,
      width: size.width,
      child:Center(
        child:Text(
          "NAVIGA",style:TextStyle(color:Colors.white,fontSize:36,fontWeight: FontWeight.w900,letterSpacing:3 )
        ),
      ),
      decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage('image/nature.jpg'), fit: BoxFit.fill ),
        
      ),
    ));
  }
}
