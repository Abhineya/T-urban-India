import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

PageViewModel commonPageViewModelWidget(
  final BuildContext context,
  final String imageUrl,
) {
  return PageViewModel(
    decoration: const PageDecoration(
      fullScreen: true,
      bodyFlex: 0,
    ),
    image: Image.asset(
      imageUrl,
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      fit: BoxFit.fill,
    ),
    titleWidget: const SizedBox(),
    bodyWidget: const SizedBox(),
  );
}
