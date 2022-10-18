import 'package:flutter/material.dart';
import '../../../common/constant.dart';


class VerticalList extends StatelessWidget {
  const VerticalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height / 3,
      width: size.width,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Lagos",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w800,),)
                  ],
                ),
              ),
              height: 50,
              width: size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('image/nature.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Lagos",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w800,),)
                  ],
                ),
              ),
              height: 50,
              width: size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('image/nature.jpg'),
                      fit: BoxFit.cover)),
            ),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Lagos",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w800,),)
                  ],
                ),
              ),
              height: 50,
              width: size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('image/nature.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Lagos",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w800,),)
                  ],
                ),
              ),
              height: 50,
              width: size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('image/nature.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
               alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Lagos",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w800,),)
                  ],
                ),
              ),
              height: 50,
              width: size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('image/nature.jpg'), fit: BoxFit.fill)),
            ),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text("Lagos",style:TextStyle(color:Colors.white,fontWeight: FontWeight.w800,),)
                  ],
                ),
              ),
              height: 50,
              width: size.width / 2,
              decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('image/nature.jpg'), fit: BoxFit.fill)),
            )
          ],
        ),
      ),
    );
  }
}
