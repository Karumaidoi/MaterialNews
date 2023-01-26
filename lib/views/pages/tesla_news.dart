import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../api/api_service.dart';
import '../../model/article_model.dart';
import '../../widgets/content_widget.dart';

class TeslaNews extends StatelessWidget {
  const TeslaNews({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'News',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Tesla',
                icon: Icon(CupertinoIcons.car_detailed),
              ),
              Tab(
                text: 'Techcruch',
                icon: Icon(CupertinoIcons.news),
              )
            ]),
          ),
          body: const TabBarView(children: [TeslaNewsWidget(), CrunchNews()]),
        ));
  }
}

class TeslaNewsWidget extends StatefulWidget {
  const TeslaNewsWidget({super.key});

  @override
  State<TeslaNewsWidget> createState() => _TeslaNewsWidgetState();
}

class _TeslaNewsWidgetState extends State<TeslaNewsWidget> {
  late Future<List<ArticleModel>> newsData;

  @override
  void initState() {
    newsData = NetworkData().getCurrentNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: newsData,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return CardWidget(
                  title: 'snapshot.data![index].title!',
                  caption: 'snapshot.data![index].description!',
                  publishedAt: 'snapshot.data![index].publishedAt!',
                );
              });
        });
  }
}

class CrunchNews extends StatelessWidget {
  const CrunchNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
