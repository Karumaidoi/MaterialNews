import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
          body: const TabBarView(children: [TeslaNewsWidgets(), CrunchNews()]),
        ));
  }
}

class TeslaNewsWidgets extends StatelessWidget {
  const TeslaNewsWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        children: const [CardWidget(), CardWidget()],
      ),
    );
  }
}

class CrunchNews extends StatelessWidget {
  const CrunchNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
