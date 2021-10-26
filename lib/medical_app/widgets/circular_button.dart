import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({
    Key? key,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  final Widget icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        color: Colors.white,
        child: InkWell(
          onTap: () => onPressed(),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: icon,
          ),
        ),
      ),
    );
  }
}
