import 'package:flutter/material.dart';

class BotonAzul extends StatelessWidget {
  final String text;
  final Function onPressed;

  const BotonAzul(
      {Key? key,
      //
      required this.text,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          primary: Colors.blue, // background
          onPrimary: Colors.white,
          elevation: 2,
          shadowColor: Colors.black,
          shape: StadiumBorder() // foreground
          ),
      focusNode: FocusNode(),
      onPressed: () {
        this.onPressed;
      },
      child: Container(
        width: double.infinity,
        child: Center(
          child: Text(
            this.text,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
