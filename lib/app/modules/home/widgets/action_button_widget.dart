import 'package:flutter/material.dart';

class ActionButtonWidget extends StatelessWidget {
  const ActionButtonWidget({
    Key key,
    @required this.iconData,
    this.iconButtonBackgroundColor,
    this.onPressed,
  }) : super(key: key);

  final Color iconButtonBackgroundColor;
  final IconData iconData;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(30.0),
      onTap: onPressed,
      child: CircleAvatar(
        backgroundColor: iconButtonBackgroundColor,
        foregroundColor: Colors.white,
        radius: 28.0,
        child: Icon(
          iconData,
          size: 32.0,
        ),
      ),
    );
  }
}
