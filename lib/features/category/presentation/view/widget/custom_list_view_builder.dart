import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'list_view_item.dart';

class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({Key? key, required this.list}) : super(key: key);
  final List<dynamic> list;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 20,right: 20),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: list.length,
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: () {
                GoRouter.of(context).push("/DetailsView",extra: list[index]);
              },
              child:  Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: ListViewItem(doctorModel: list[index]),
              ),
            ),
      ),
    );
  }
}
