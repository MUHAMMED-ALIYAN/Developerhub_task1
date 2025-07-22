import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextStyle? titleStyle;
  final Color? backgroundColor;
  final double? iconSize;
  final List<Widget>? actions;
  final Widget? leading;
  final VoidCallback? onLeadingPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    this.titleStyle,
    this.backgroundColor,
    this.iconSize,
    this.actions,
    this.leading,
    this.onLeadingPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor ?? Colors.white,
      elevation: 0,
      centerTitle:  true,
      title: Text(
        title,
        style: titleStyle ??
            const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
      ),
      leading: leading ??
          IconButton(
            icon: Icon(Icons.arrow_back, size: iconSize ?? 24),
            onPressed: onLeadingPressed ?? () => Navigator.pop(context),
          ),
      actions: actions?.map((widget) {
        if (widget is IconButton) {
          return IconButton(
            icon: Icon(
              (widget.icon as Icon).icon,
              color: (widget.icon as Icon).color,
              size: iconSize ?? 24,
            ),
            onPressed: widget.onPressed,
          );
        }
        return widget;
      }).toList(),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
