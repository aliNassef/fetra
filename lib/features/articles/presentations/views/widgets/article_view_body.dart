import 'package:fetra/core/shared/functions/locale.dart';
import 'package:flutter/material.dart';

class ArticlesViewBody extends StatelessWidget {
  const ArticlesViewBody({super.key, required this.controller});
  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: isArabic() ? TextDirection.rtl : TextDirection.ltr,
      
      child: TabBarView(
        controller: controller,
        children: [
          Container(
            color: Colors.amber,
          ),
          Container(
            color: Colors.black,
          ),
          Container(
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
