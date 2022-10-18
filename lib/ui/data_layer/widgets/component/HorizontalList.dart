import 'package:flutter/material.dart';
import '../../../common/constant.dart';


class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Expanded(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              alignment: Alignment.center,
              child:IconButton(onPressed: (){}, icon: Icon(Icons.picture_in_picture ),iconSize:20,color: Colors.black54,),
              height: 50, width: 80, color: Colors.black38),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.center,
               child:IconButton(onPressed: (){}, icon: Icon(Icons.picture_in_picture ),iconSize:20,color: Colors.black54,),
              height: 50, width: 80, color: Colors.black38),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.center,
               child:IconButton(onPressed: (){}, icon: Icon(Icons.picture_in_picture ),iconSize:20,color: Colors.black54,),
              height: 50, width: 80, color: Colors.black38),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.center,
               child:IconButton(onPressed: (){}, icon: Icon(Icons.picture_in_picture ),iconSize:20,color: Colors.black54,),
              height: 50, width: 80, color: Colors.black38),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.center,
               child:IconButton(onPressed: (){}, icon: Icon(Icons.picture_in_picture ),iconSize:20,color: Colors.black54,),
              height: 50, width: 80, color: Colors.black38),
            SizedBox(
              width: kScreenPadding,
            ),
            Container(
              alignment: Alignment.center,
              child:IconButton(onPressed: (){}, icon: Icon(Icons.picture_in_picture ),iconSize:20,color: Colors.black54,),
              height: 50, width: 80, color: Colors.black38)
          ],
        ),
      ),
    );
  }
}
