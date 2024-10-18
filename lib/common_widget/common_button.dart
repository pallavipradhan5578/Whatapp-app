
import 'package:flutter/material.dart';
import 'package:whatsapp/utilities/app_sizes.dart';

class CommonButton extends StatelessWidget {
  final String title;

  CommonButton({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: AppSizes.buttonHeight,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.blue.shade700,
            Colors.blue.shade700,
            Colors.blue.shade300,
            Colors.blue.shade300,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            spreadRadius: 4,
            blurRadius: 10,
            offset: const Offset(-5, 6),
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
