import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_max/ui/common/constant.dart';
import 'package:tp_max/ui/data_layer/widgets/component/HorizontalList.dart';
import 'package:tp_max/ui/data_layer/widgets/component/customInput.dart';
import 'package:tp_max/ui/data_layer/widgets/component/verticalList.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/categorie.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String search = "";
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: kScreenPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi, Dan",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Wheme one you handling to ?",
                      style: TextStyle(fontSize: 20))
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notification_add_rounded),
                iconSize: 30,
              )
            ],
          ),
          SizedBox(
            height: kScreenPadding,
          ),
          CustomInput(
              placeholder: "Rechercher...",
              obscure: false,
              err: "",
              validator: (e) {
                if (e == null || e.isEmpty) {
                  return "remplissez";
                }
              },
              onSaved: (e) {
                setState(() {
                  search = e;
                });
              },
              icon: Icons.search,
              max: 2,
              min: 1),
          SizedBox(
            height: kScreenPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categorie",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(Categorie());
                },
                child: Text(
                  "voir plus",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
                ),
              ),
            ],
          ),
          SizedBox(
            height: kScreenPadding,
          ),
          HorizontalList(),
          SizedBox(
            height: kScreenPadding,
          ),
          Text(
            "All around you",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
          ),
          SizedBox(
            height: kScreenPadding,
          ),
          VerticalList()
        ],
      ),
    ));
  }
}







/*
Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             
             CustomInput(
                  placeholder: "Rechercher...",
                  obscure: false,
                  err: "",
                  validator: (e) {
                    if (e == null || e.isEmpty) {
                      return "remplissez";
                    }
                  },
                  onSaved: (e) {
                    setState(() {
                      search = e;
                    });
                  },
                  icon: Icons.search,
                  max: 2,
                  min: 1),
              IconButton(onPressed: (){}, icon: Icon(Icons.list_alt_outlined),iconSize:20,)
            ],
          ),*/