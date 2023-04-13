import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news/models/newsModel.dart';
import 'package:news/shared/Style/My_Theme_Data.dart';

class tap extends StatelessWidget {
  tap({required this.isSelected, required this.sources});
  bool isSelected;
  Sources sources;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
          border: Border.all(color: MyThemeData.PrimaryColor),
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? MyThemeData.PrimaryColor : Colors.transparent),
      child: Text(
        sources.name ?? '',
        style: TextStyle(
            color: isSelected ? Colors.white : MyThemeData.PrimaryColor),
      ),
    );
  }
}
