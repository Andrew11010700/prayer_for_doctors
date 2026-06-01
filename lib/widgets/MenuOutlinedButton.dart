import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuOutlinedButton extends StatelessWidget {

  const MenuOutlinedButton({
    super.key,
    required this.text,
    required this.icon,
    this.foregroundColor = Colors.indigo,
    this.horizontalPadding = 24
  });

  final String text;
  final IconData icon;
  final MaterialColor foregroundColor;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: SizedBox(
        width: double.infinity,
        child: OutlinedButton.icon(
          onPressed: () {},
          icon: Icon(icon, size: 20),
          label: Text(text, style: TextStyle(fontSize: 20)),
          style: OutlinedButton.styleFrom(
            foregroundColor: foregroundColor,
            padding: EdgeInsets.symmetric(vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

}