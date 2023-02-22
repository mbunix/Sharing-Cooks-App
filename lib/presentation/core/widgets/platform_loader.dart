import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformLoader extends StatelessWidget {
  const PlatformLoader({super.key, this.color = Colors.grey});

  final Color color;

  @override
  Widget build(BuildContext context) {
    final TargetPlatform platform = Theme.of(context).platform;
    Brightness brightness = Brightness.light;
    if (color != Colors.grey) {
      brightness = Brightness.dark;
    }
    return Center(
      child: platform == TargetPlatform.iOS
          ? CupertinoTheme(
              data: CupertinoTheme.of(context).copyWith(brightness: brightness),
              child: const CupertinoActivityIndicator(radius: 16),
            )
          : CircularProgressIndicator(strokeWidth: 2, backgroundColor: color),
    );
  }
}
