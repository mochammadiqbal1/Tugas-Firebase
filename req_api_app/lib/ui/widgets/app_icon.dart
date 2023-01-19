import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:req_api_app/ui/theme/app_color.dart';

class AppIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget icon;

  const AppIconButton({super.key, required this.onTap, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(360),
      splashColor: AppColor.black.withOpacity(0.25),
      highlightColor: AppColor.black.withOpacity(0.4),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: icon,
      ),
    );
  }
}
