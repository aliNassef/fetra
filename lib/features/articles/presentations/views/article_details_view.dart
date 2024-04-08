
import 'package:flutter/material.dart';

import 'widgets/article_details_view_body.dart';

class ArticleDetailsView extends StatelessWidget {
  const ArticleDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0, // Remove shadow for better effect
      ),
      body: const ArticleDetailsViewBody(),
    );
  }
}
