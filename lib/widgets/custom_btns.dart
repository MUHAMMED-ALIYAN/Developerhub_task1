import 'package:flutter/material.dart';

/// Custom Elevated Button
class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? elevation;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final double? width;
  final double? height;
 

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.elevation,
    this.borderRadius,
    this.padding,
    this.textStyle,
    this.width,
    this.height, 
    
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.blue,
          foregroundColor: foregroundColor ?? Colors.white,
          elevation: elevation ?? 4,
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
            
          ),
        ),
        child: Text(
          text,
          style: textStyle ??
              const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
        ),
      ),
    );
  }
}

/// Custom Text Button
class CustomTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  final TextStyle? textStyle;
  final EdgeInsetsGeometry? padding;

  const CustomTextButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.textStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
      child: Text(
        text,
        style: textStyle ??
            const TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
      ),
    );
  }
}

/// Custom Icon Button
class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  final Color? iconColor;
  final double? iconSize;
  final EdgeInsetsGeometry? padding;
  final Color? splashColor;
  final Color? highlightColor;
  final ShapeBorder? shape;

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.iconColor,
    this.iconSize,
    this.padding,
    this.splashColor,
    this.highlightColor,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: iconSize ?? 24,
      color: iconColor ?? Colors.black,
      padding: padding ?? const EdgeInsets.all(8),
      splashRadius: 24,
      splashColor: splashColor,
      highlightColor: highlightColor,
      onPressed: onPressed,
      icon: Icon(icon),
      constraints: const BoxConstraints(),
      tooltip: '',
    );
  }
}
