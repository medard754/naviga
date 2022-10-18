import 'package:flutter/material.dart';
import 'package:tp_max/ui/data_layer/widgets/index.dart';

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
    Navigator.push(context, 
          MaterialPageRoute(builder: (context)=> Choice())
      );
    
  }
  @override
  Widget build(BuildContext context) {
    final Size size=MediaQuery.of(context).size ;
    return Scaffold(
      body:Container(
      height: size.height,
      width: size.width,
      child: Center(
        child:Container(
          alignment: Alignment.center,
          height: 100,
          width: 250,
          child:Text(
          "Hello les amies",style:TextStyle(color:Colors.white,fontSize:25,fontWeight: FontWeight.w600,letterSpacing:3 )
        ),
        decoration: BoxDecoration(
          color:Colors.white12
        ),
        )
      ),
      decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage('image/nature2.jpg'), fit: BoxFit.cover ),
        
      ),
    )
    );
  }
}
