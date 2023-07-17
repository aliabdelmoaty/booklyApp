import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchText extends StatelessWidget {
  const CustomSearchText({super.key});

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
