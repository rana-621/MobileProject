import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class OnboardingModel {
  late String image, title, subtitile;
  late Color color;
  OnboardingModel({
    required this.image,
    required this.title,
    required this.subtitile,
    this.color = Colors.black,
  });
}
