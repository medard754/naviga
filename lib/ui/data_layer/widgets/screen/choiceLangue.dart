import 'package:flutter/material.dart';
import 'package:language_picker/language_picker_dropdown.dart';
import 'package:language_picker/languages.dart';
import 'package:tp_max/ui/data_layer/widgets/index.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/choiceCountry.dart';


class Choice extends StatefulWidget {
  Choice({Key? key}) : super(key: key);

  @override
  State<Choice> createState() => _ChoiceState();
}

class _ChoiceState extends State<Choice> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      height: size.height,
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
          alignment: Alignment.center,
          height: size.height / 2,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Choisir une langue', style: TextStyle(color: Colors.white)),
            const SizedBox(height:15, ),
            Container(
              width:250,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: LanguagePickerDropdown(
                initialValue: Language.fromIsoCode('fr') ,
                onValuePicked: (Language language) {
                  print(language.name);
                },
                ),
              ),
              decoration: BoxDecoration(
                border: Border.all(color:Colors.white,style:BorderStyle.solid,width:2)
              ),
            ),
            const SizedBox(height: 25),
            IconButton(
              onPressed: () {
                Get.to(ChoiceCountry());
              },
              icon: Icon(Icons.arrow_circle_right_outlined),
              iconSize: 25,
              color: Colors.white,
            )
          ]),
          decoration: BoxDecoration(
              color: Colors.white12,
              border: Border.all(
                  color: Colors.white, style: BorderStyle.solid, width: 2)),
        ),
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('image/eiffel.jpg'), fit: BoxFit.fill),
      ),
    ));
  }
}
