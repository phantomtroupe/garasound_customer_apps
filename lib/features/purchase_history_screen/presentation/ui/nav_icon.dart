import 'package:flutter/material.dart';
import 'package:garasound_customer_apps/gen/assets.gen.dart';

class NavIconButton extends StatelessWidget {
  final AssetGenImage image;
  final Function? onTap;
  final Color color;
  final EdgeInsets padding;
  const NavIconButton(this.image, {this.onTap, Key? key, this.color = Colors.black, this.padding = const EdgeInsets.all(8.0)}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      shape: const CircleBorder(),
      clipBehavior: Clip.hardEdge,
      child: IconButton(
        padding: padding,
        icon: Image.asset(
          image.path,
          color: color,
        ),
        onPressed: () {
          if (onTap != null) onTap!();
        },
      ),
    );
  }
}