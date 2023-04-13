import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news/models/newsModel.dart';
import 'package:news/screens/home/tapControlerWidet/tapControlerScreen.dart';
import 'package:news/shared/network/remote/api.dart';

import '../../models/newsModel.dart';
import '../../models/newsModel.dart';

class homePage extends StatelessWidget {
  static const String id = 'homePage';
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/ScafoldImage.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.fill),
        Scaffold(
            appBar: AppBar(
              title: Text(
                'news',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: FutureBuilder<newsModel>(
                    future: apiManger.getSourses(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (snapshot.hasError) {
                        return Text('there is an error');
                      }
                      List<Sources> soursesList = snapshot.data!.sources ?? [];
                      return tapControlerScreen(sources: soursesList);
                    },
                  ),
                )
              ],
            )),
      ],
    );
  }
}
