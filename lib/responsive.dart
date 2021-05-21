import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget smallMobile;
  final Widget largeMobile;
  final Widget tablet;
  final Widget laptop;
  final Widget largeLaptop;

  const Responsive({
    Key? key,
    required this.tablet,
    required this.smallMobile,
    required this.largeMobile,
    required this.laptop,
    required this.largeLaptop,
  }) : super(key: key);

  factory Responsive.simple({
    required Widget mobile,
    required Widget tablet,
    required Widget laptop,
  }) {
    return Responsive(
      smallMobile: mobile,
      largeMobile: mobile,
      tablet: tablet,
      laptop: laptop,
      largeLaptop: laptop,
    );
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isSmallMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 768;

  static bool isLargeMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850 &&
      MediaQuery.of(context).size.width >= 768;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1024 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width < 1440 &&
      MediaQuery.of(context).size.width >= 1024;

  static bool isLargeLaptop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1440;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1024;

  @override
  Widget build(BuildContext context) {
    if (isLargeLaptop(context)) {
      return largeLaptop;
    } else if (isLaptop(context)) {
      return laptop;
    } else if (isTablet(context)) {
      return tablet;
    } else if (isLargeMobile(context)) {
      return largeMobile;
    } else {
      return smallMobile;
    }
  }
}
