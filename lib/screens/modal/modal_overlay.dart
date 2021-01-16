import 'dart:ui';

import 'package:flutter/material.dart';

class ModalOverlay<T> extends ModalRoute<T> {
  ModalOverlay({
    @required this.child,
    this.isAndroidBackEnable = true,
  }) : super();

  final Widget child;
  final bool isAndroidBackEnable;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 100);

  @override
  bool get opaque => false;

  @override
  bool get maintainState => true;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.1);

  @override
  bool get barrierDismissible => true;

  @override
  String get barrierLabel => null;

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return Material(
      type: MaterialType.transparency,
      child: SafeArea(
        child: _buildOverlayContent(context),
      ),
    );
  }

  @override
  Widget buildTransitions(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    final blurAnimation = Tween<double>(begin: 0, end: 8)
        .chain(CurveTween(curve: Curves.easeOut))
        .animate(animation);

    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: blurAnimation.value,
        sigmaY: blurAnimation.value,
      ),
      child: Container(
        child: ScaleTransition(
          scale: animation.drive(
            Tween(begin: 0.7, end: 1.0)
                .chain(CurveTween(curve: Curves.easeOut)),
          ),
          child: child,
        ),
      ),
    );
  }

  Widget _buildOverlayContent(BuildContext context) {
    return Center(
      child: dialogContent(context),
    );
  }

  Widget dialogContent(BuildContext context) {
    return WillPopScope(
      child: child,
      onWillPop: () {
        return Future(() => isAndroidBackEnable);
      },
    );
  }
}
