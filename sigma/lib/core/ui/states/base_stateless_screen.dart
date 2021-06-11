import 'package:flutter/material.dart';
import 'package:sigma/core/ui/widgets/base_stateless_widget.dart';

abstract class BaseStatelessScreen extends BaseStatelessWidget {
  BaseStatelessScreen({required Key key}) : super(key: key);

  @override
  Widget getLayout(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: buildBody(context),
      ),
    );
  }

  /// should be overridden in extended widget
  Widget buildAppbar(BuildContext context);

  /// should be overridden in extended widget
  Widget buildBody(BuildContext context);
}