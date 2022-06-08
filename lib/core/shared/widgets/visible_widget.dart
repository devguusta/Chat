import 'package:flutter/material.dart';

class VisibleWidget extends StatefulWidget {
  const VisibleWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<VisibleWidget> createState() => _VisibleWidgetState();
}

class _VisibleWidgetState extends State<VisibleWidget> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          visible ? Icons.visibility_off : Icons.visibility,
          color: const Color.fromRGBO(0, 0, 0, 0.54),
        ),
        onPressed: () {
          setState(() {
            visible = !visible;
          });

          print(visible);
        });
  }
}
