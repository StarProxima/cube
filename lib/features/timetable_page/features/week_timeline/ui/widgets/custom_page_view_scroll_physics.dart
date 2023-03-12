import 'package:flutter/material.dart';

class CustomPageViewScrollPhysics extends ScrollPhysics {
  const CustomPageViewScrollPhysics({ScrollPhysics? parent})
      : super(parent: parent);

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 100,
        stiffness: 1000,
        damping: 100,
      );
}
