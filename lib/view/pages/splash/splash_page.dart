import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  static const double _iconSize = 50;

  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2300),
    );
    _animation = CurvedAnimation(
        parent: _animationController.view, curve: Curves.easeInCubic);

    _animationController.forward().whenComplete(() => Get.offNamed('/home'));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedBuilder(
      animation: _animation,
      builder: (BuildContext context, Widget child) {
        return FractionalTranslation(
          translation: Offset(
              ((Get.width / _iconSize - 1) * _animationController.value),
              (Get.height / _iconSize - 1) -
                  ((Get.height / _iconSize - 1) * _animationController.value)),
          child: child,
        );
      },
      child: Image.network(
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Flat_tick_icon.svg/1200px-Flat_tick_icon.svg.png',
        width: _iconSize,
        height: _iconSize,
      ),
    ));
  }
}
