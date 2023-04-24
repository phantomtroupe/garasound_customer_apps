import 'package:flutter/material.dart';

final BoxDecoration appBarDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: const BorderRadius.only(
    bottomLeft: Radius.circular(16),
    bottomRight: Radius.circular(16),
  ),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.8),
      spreadRadius: 1,
      blurRadius: 3,
      offset: const Offset(0, 5), // changes position of shadow
    ),
  ],
);

final BoxDecoration cartItemDecoration = const BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.all(
    Radius.circular(16),
  ),
);