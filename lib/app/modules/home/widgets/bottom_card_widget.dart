import 'package:flutter/material.dart';
import 'package:nubank_interface_clone/app/modules/home/models/icon_model.dart';

class BottomCardWidget extends StatelessWidget {
  const BottomCardWidget({
    Key key,
    @required this.secondaryColor,
    @required this.icon,
  }) : super(key: key);

  final Color secondaryColor;
  final IconModel icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: secondaryColor,
      child: Container(
        width: 100.0,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.monetization_on_outlined,
              color: Colors.white,
              size: 28.0,
            ),
            Text(
              icon.description,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
