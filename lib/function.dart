import 'package:flutter/material.dart';

TextEditingController controller = TextEditingController();

Widget exp(
  String b, [
  Color colo = Colors.amber,
]) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: colo,
          fixedSize: Size(70, 70),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
          textStyle: TextStyle(color: Colors.black)),
      onPressed: () {
        if (controller.text[controller.text.length - 1] == 'x') {
          controller.text =
              controller.text.substring(0, controller.text.length - 1);
        } else if (controller.text[controller.text.length - 1] == '/') {
          controller.text =
              controller.text.substring(0, controller.text.length - 1);
        } else if (controller.text[controller.text.length - 1] == '+') {
          controller.text =
              controller.text.substring(0, controller.text.length - 1);
        } else if (controller.text[controller.text.length - 1] == '-') {
          controller.text =
              controller.text.substring(0, controller.text.length - 1);
        } else if (controller.text[controller.text.length - 1] == '%') {
          controller.text =
              controller.text.substring(0, controller.text.length - 1);
        }
        controller.text += b;
      },
      child: Text(
        b,
        style: TextStyle(fontSize: 30),
      ));
}

Widget wid(String a, [Color col = Colors.black]) {
  return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: col,
          fixedSize: Size(70, 70),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(70))),
      onPressed: () {
        controller.text += a;
      },
      child: Text(
        a,
        style: TextStyle(fontSize: 25),
      ));
}
