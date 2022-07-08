import 'package:flutter/material.dart';
import 'package:flutter_news_app/services/api_service.dart';

import '../models/news_model.dart';

class NewsHomePage extends StatefulWidget {
  const NewsHomePage({Key? key}) : super(key: key);

  @override
  State<NewsHomePage> createState() => _NewsHomePageState();
}

class _NewsHomePageState extends State<NewsHomePage> {
  NewsModel? _newsModel;
  bool didGetTheData = false;
  @override
  void initState() {
    _getNewsData();

    super.initState();
  }

  void _getNewsData() async {
    await APIService().getNews().then((value) {
      setState(() {
        _newsModel = value;
        didGetTheData = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Visibility(
          visible: didGetTheData,
          child: ListView.builder(
              itemCount: _newsModel?.articles.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_newsModel!.articles[index].title),
                  subtitle: Text(_newsModel!.articles[index].description),
                );
              }),
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
