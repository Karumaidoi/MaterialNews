import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: double.infinity,
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Material 3 Update Release Flutter",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "FakeStoreApi is a free online REST API that you can use whenever you need Pseudo-real data for your e-commerce or shopping website without running any server-side code.",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    const Text("23rd November 2022"),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.adaptive.share_rounded))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
