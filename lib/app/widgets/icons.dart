import 'package:flutask_checker/app/core/values/colors.dart';
import 'package:flutask_checker/app/core/values/icons.dart';
import 'package:flutter/material.dart';

List<Icon> getIcons() {
  return const [
    Icon(IconData(personIcon, fontFamily: 'MaterialIcons'), color: purple),
    Icon(IconData(workIcon, fontFamily: 'MaterialIcons'), color: pink),
    Icon(IconData(importanceIcon, fontFamily: 'MaterialIcons'), color: green),
    Icon(IconData(urgentIcon, fontFamily: 'MaterialIcons'), color: yellow),
    Icon(IconData(othertaskIcon, fontFamily: 'MaterialIcons'),
        color: lightBlue),
    Icon(IconData(hometaskIcon, fontFamily: 'MaterialIcons'), color: blue)
  ];
}
