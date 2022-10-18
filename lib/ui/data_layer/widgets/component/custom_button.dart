

import 'package:tp_max/ui/common/constant.dart';

import '../../../common/export.dart';

class CustomButton extends StatelessWidget {
  final Color? backgroundColor;
  final String? label;
  final TextStyle? style;
  const CustomButton({Key? key, this.backgroundColor, this.label, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kButtonHeight,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        color: backgroundColor ?? kPurpleColor,
        borderRadius: BorderRadius.circular(9)
      ),
      child: Center(child: Text("$label", style: style,)),
    );
  }
}