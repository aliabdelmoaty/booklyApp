import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomSearchText extends StatefulWidget {
  const CustomSearchText({super.key});

  @override
  State<CustomSearchText> createState() => _CustomSearchTextState();
}

class _CustomSearchTextState extends State<CustomSearchText> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      decoration: InputDecoration(
          enabledBorder: buildOutLineBorder(),
          focusedBorder: buildOutLineBorder(),
          hintText: 'Search',
          suffixIcon: IconButton(
              onPressed: () {},
              icon: const Opacity(
                  opacity: .8, child: Icon(FontAwesomeIcons.magnifyingGlass)))),
    );
  }

  OutlineInputBorder buildOutLineBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.white));
  }
}
