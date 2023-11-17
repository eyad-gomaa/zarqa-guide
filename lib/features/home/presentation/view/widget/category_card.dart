import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/styles.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({Key? key, required this.imgUrl, required this.title, required this.navigator}) : super(key: key);
final String imgUrl;
final String title;
final String navigator;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(navigator);
      },
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                decoration:  BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgUrl)),
                ),
              ),
            ),
          ),
          Text(title,
            style: Styles.TextStyle20,
          ),
        ],
      ),
    );
  }
}
