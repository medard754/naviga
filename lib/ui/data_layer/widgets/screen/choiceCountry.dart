import 'package:flutter/material.dart';
import 'package:tp_max/ui/data_layer/widgets/index.dart';
import 'package:tp_max/ui/data_layer/widgets/screen/welcome.dart';
import 'package:country_picker/country_picker.dart';

class ChoiceCountry extends StatefulWidget {
  ChoiceCountry({Key? key}) : super(key: key);

  @override
  State<ChoiceCountry> createState() => _ChoiceCountryState();
}

class _ChoiceCountryState extends State<ChoiceCountry> {
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text('Choisir un pays', style: TextStyle(color: Colors.white)),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              onPressed: () {
                showCountryPicker(
                  context: context,
                  //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                  exclude: <String>['KN', 'MF'],
                  favorite: <String>['SE'],
                  //Optional. Shows phone code before the country name.
                  showPhoneCode: true,
                  onSelect: (Country country) {
                    print('Select country: ${country.displayName}');
                  },
                  // Optional. Sets the theme for the country list picker.
                  countryListTheme: CountryListThemeData(
                    // Optional. Sets the border radius for the bottomsheet.
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0),
                    ),
                    // Optional. Styles the search field.
                    inputDecoration: InputDecoration(
                      labelText: 'Search',
                      hintText: 'Start typing to search',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: const Color(0xFF8C98A8).withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                );
              },
              child: const Text('Show country picker'),
            ),
            const SizedBox(height: 25),
            IconButton(
              onPressed: () {
                Get.to(Welcome());
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
