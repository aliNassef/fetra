import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ArticleDetailsViewBody(),
    );
  }
}

class ArticleDetailsViewBody extends StatelessWidget {
  const ArticleDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .6,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://th.bing.com/th/id/OIP.YamThAfETQJZRHNHwcjeCAHaE7?rs=1&pid=ImgDetMain',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
