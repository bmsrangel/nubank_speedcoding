import 'package:flutter/material.dart';

class BodyCardWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget bodyTitle;
  final Widget bodyContent;
  final Color iconColor;
  final Color titleColor;
  final Color iconBackgroundColor;
  final bool showbodyContent;

  const BodyCardWidget({
    Key key,
    this.icon,
    @required this.title,
    @required this.bodyContent,
    this.iconColor = const Color(0xFF757575),
    this.titleColor = const Color(0xFF757575),
    this.iconBackgroundColor,
    this.showbodyContent = true,
    this.bodyTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Card(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  iconBackgroundColor == null
                      ? Icon(
                          icon,
                          color: iconColor,
                          size: 28.0,
                        )
                      : CircleAvatar(
                          backgroundColor: iconBackgroundColor,
                          foregroundColor: iconColor,
                          child: Icon(
                            icon,
                            color: iconColor,
                            size: 28.0,
                          ),
                        ),
                  const SizedBox(width: 10.0),
                  Text(
                    title,
                    style: TextStyle(
                      color: titleColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              bodyTitle,
              const SizedBox(height: 15.0),
              Container(
                width: MediaQuery.of(context).size.width,
                child: bodyContent,
                foregroundDecoration: BoxDecoration(
                  color:
                      showbodyContent ? Colors.transparent : Colors.grey[200],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
