import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:news/models/newsModel.dart';
import 'package:news/shared/network/remote/api.dart';

import '../../models/newsResponse.dart';

class newsContent extends StatelessWidget {
  newsContent({required this.source});
  Sources source;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: apiManger.GetNews(source),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Text('there is an error');
          }
          List<Articles> soursesList = snapshot.data!.articles ?? [];
          return ListView.builder(
            itemCount: soursesList.length,
            itemBuilder: (context, index) {
              return Text(soursesList[index].title ?? '');
            },
          );
        },
      ),
    );
  }
}
