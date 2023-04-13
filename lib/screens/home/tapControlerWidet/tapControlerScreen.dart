import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news/models/newsModel.dart';
import 'package:news/screens/home/tapControlerWidet/ControlerTap.dart';

import '../newscontent.dart';

class tapControlerScreen extends StatefulWidget {
  tapControlerScreen({required this.sources});
  List<Sources> sources = [];

  @override
  State<tapControlerScreen> createState() => _tapControlerScreenState();
}

class _tapControlerScreenState extends State<tapControlerScreen> {
  int isSelectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          DefaultTabController(
            length: widget.sources.length,
            child: TabBar(
              isScrollable: true,
              onTap: (value) {
                isSelectedIndex = value;
                setState(() {});
              },
              indicatorColor: Colors.transparent,
              tabs: widget.sources
                  .map((e) => tap(
                      isSelected: isSelectedIndex == widget.sources.indexOf(e),
                      sources: e))
                  .toList(),
            ),
          ),
          newsContent(
            source: widget.sources[isSelectedIndex],
          )
        ],
      ),
    );
  }
}
