import 'package:flutter/material.dart';
import 'package:tp_max/ui/data_layer/widgets/index.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/signIn.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/signUp.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 15,
              ),
              GestureDetector(
                  onTap: () {
                    Get.to(SignIn());
                  },
                  child: Container(
                    alignment: Alignment.center,
                      height: 70,
                      width: size.width,
                      child: Text(
                        "SignIn",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(5)))),
              const SizedBox(
                height: 15,
              ),
               GestureDetector(
                  onTap: () {
                    Get.to(SignUp());
                  },
                  child: Container(
                    alignment: Alignment.center,
                      height: 70,
                      width: size.width,
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      decoration: BoxDecoration(
                         
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(5)))),
            ],
          ),
        ),
        decoration:BoxDecoration(
                  image: DecorationImage(image: AssetImage('image/nature3.jpg'), fit: BoxFit.cover ),
        ),
      ),
    );
  }
}
