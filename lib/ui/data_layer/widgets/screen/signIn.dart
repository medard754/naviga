import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_max/ui/common/constant.dart';
import 'package:tp_max/ui/data_layer/widgets/component/custom_button.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/home.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/signUp.dart';

import '../component/customInput.dart';

class SignIn extends StatefulWidget {
  SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding + 5),
          child: Stack(children: [_form()]),
        ),
      ),
    );
  }

  Widget _form() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('SignIn',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
          SizedBox(
            height: kScreenPadding,
          ),
          CustomInput(
              placeholder: "Entrer votre email",
              obscure: false,
              err: "veuillez entrer l'email",
              validator: (e) {
                if (e == null || e.isEmpty) {
                  return "remplissez ce champ";
                }
              },
              onSaved: (e) {
                setState(() {
                  email = e;
                });
              },
              icon: Icons.email,
              max: 2,
              min: 1),
          SizedBox(
            height: kScreenPadding,
          ),
          CustomInput(
              placeholder: "Entrer votre mot passe",
              obscure: false,
              err: "veuillez remplir ce champ",
              validator: (e) {
                if (e == null || e.isEmpty) {
                  return "remplissez ce champ";
                }
              },
              onSaved: (e) {
                setState(() {
                  password = e;
                });
              },
              icon: Icons.vpn_key,
              max: 2,
              min: 1),
          SizedBox(
            height: kScreenPadding,
          ),
          Text(
            "Forgot Password?",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: kScreenPadding,
          ),
          GestureDetector(
            onTap: () {
              Get.to(Home());
            },
            child: CustomButton(
              label: 'Connectez-vous',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(
            height: kScreenPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("OU",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0), fontSize: 17)),
            ],
          ),
          SizedBox(
            height: kScreenPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.facebook_rounded),
                color: Colors.blue,
                iconSize: 25,
              ),
              SizedBox(
                width: kScreenPadding,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.facebook_rounded),
                color: Color.fromARGB(255, 243, 61, 33),
                iconSize: 25,
              ),
              SizedBox(
                width: kScreenPadding,
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.facebook_rounded),
                color: Colors.blue,
                iconSize: 25,
              ),
            ],
          ),
          SizedBox(
            height: kScreenPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Vous n'avez pas de compte? ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                  )),
              GestureDetector(
                  onTap: () {
                    Get.to(SignUp());
                  },
                  child: const Text(
                    "S'inscrire",
                    style: TextStyle(
                        color: Color.fromARGB(255, 13, 68, 220),
                        fontSize: 15,
                        decoration: TextDecoration.underline),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
