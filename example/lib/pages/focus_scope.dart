import 'package:build_context/build_context.dart';
import 'package:flutter/material.dart';

class FocusScopePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.focusScope.unfocus,
      excludeFromSemantics: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Focus'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              autofocus: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Click away from me...',
                hintStyle: context.primaryTextTheme.titleMedium!
                    .copyWith(color: context.primaryColor),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
