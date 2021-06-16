import 'package:flutter/material.dart';
import 'package:sigma/core/ui/widgets/base_stateful_widget.dart';


abstract class BaseStatefulScreen<B extends BaseStatefulWidget>{
  get scaffoldKey => null;


  @override
  Widget getLayout() {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        body: buildBody(),
        resizeToAvoidBottomInset: true,
      ),
    );
  }

  /// should be overridden in extended widget
  Widget buildAppbar();

  /// should be overridden in extended widget
  Widget buildBody();
}
