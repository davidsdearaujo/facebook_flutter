import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String labelText;
  final String hintText;
  final Color color;
  final bool obscureText;
  final Widget sulfixIcon;

  const CustomTextFieldWidget(
      {Key key,
      this.labelText = "",
      this.hintText = "",
      this.color,
      this.obscureText = false,
      this.sulfixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(40),
          child: Container(
            height: 40,
            padding: const EdgeInsets.only(left: 15, right: 15, top: 2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                width: 1,
                color: color ?? Theme.of(context).primaryColor,
              ),
            ),
            alignment: Alignment.center,
            child: TextField(
              autofocus: false,
              obscureText: this.obscureText,
              style: TextStyle(color: color ?? Theme.of(context).primaryColor),
              decoration: InputDecoration(
                hintText: hintText,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                hintStyle: TextStyle(
                  color: color ?? Theme.of(context).hintColor,
                ),
                suffixIcon: sulfixIcon,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
