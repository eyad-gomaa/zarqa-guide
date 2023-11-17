import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khadamat/core/utils/styles.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.title, required this.collection}) : super(key: key);
final String title;
final String collection;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){
            GoRouter.of(context).pop();
          }, icon: const Icon(Icons.arrow_back_ios,size: 30,)),
          Text(title,style:Styles.TextStyle20,),
          IconButton(onPressed: (){GoRouter.of(context).push("/SearchView",extra: collection);}, icon: const Icon(Icons.search_rounded,size: 30,)),
        ],
      ),
    );
  }
}
