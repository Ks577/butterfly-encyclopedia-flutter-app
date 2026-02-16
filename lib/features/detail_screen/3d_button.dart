import 'package:flutter/material.dart';
import '../../core/responsive/app_size.dart';

class Butterfly3DButton extends StatelessWidget {
  final VoidCallback onTap;

  const Butterfly3DButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.buttonHeight(context),
      child: ElevatedButton.icon(
        onPressed: onTap,
        icon: Icon(
          Icons.threed_rotation,
          color: Colors.grey,
          size: AppSizes.buttonIcon(context),
        ),
        label: Text(
          'Открыть 3D',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: Colors.grey,
            fontSize: AppSizes.buttonText(context),
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 10,
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.buttonHorizontalPadding(context),
            vertical: AppSizes.buttonVerticalPadding(context),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.cardRadius(context)),
          ),
        ),
      ),
    );
  }
}
