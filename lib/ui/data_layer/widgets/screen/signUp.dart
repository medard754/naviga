import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/home.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/signIn.dart';

import '../../../common/constant.dart';
import '../component/customInput.dart';
import '../component/custom_button.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String pseudo = "";
  String email = "";
  String password = "";
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(defaultPadding + 5),
        child: Stack(
          children: [_form()],
        ),
      )),
    );
  }

  Widget _form() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('SignUp',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
          SizedBox(
            height: kScreenPadding,
          ),
          CustomInput(
              placeholder: "Entrer votre pseudo",
              obscure: false,
              err: "veuillez remplir me champ",
              validator: (e) {
                if (e == null || e.isEmpty) {
                  return "remplissez ce champ";
                }
              },
              onSaved: (e) {
                setState(() {
                  pseudo = e;
                });
              },
              icon: Icons.person,
              max: 2,
              min: 1),
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
            children: [
              const Text("Vous avez déjà un compte ? ",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                  )),
              GestureDetector(
                  onTap: () {
                    Get.to(SignIn());
                  },
                  child: const Text(
                    "Se connecter",
                    style: TextStyle(
                        color: Color.fromARGB(255, 14, 95, 237),
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
