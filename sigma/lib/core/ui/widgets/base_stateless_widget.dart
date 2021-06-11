import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

abstract class BaseStatelessWidget extends StatelessWidget{
  BaseStatelessWidget({required Key key}):super(key:key);

  Widget getLayout(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return getLayout(context);
  }

}