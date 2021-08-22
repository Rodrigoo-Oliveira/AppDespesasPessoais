import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdaptiveButton extends StatelessWidget {

  final String label;
  final Function onPressed; 

  AdaptiveButton({
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS 
        ? CupertinoButton(
            child: Text(label),
            onPressed: null,
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : RaisedButton(
          color: Theme.of(context).primaryColor,
          textColor: Theme.of(context).textTheme.button!.color,
          child: Text(label),
          onPressed: null,
        );
  }
}