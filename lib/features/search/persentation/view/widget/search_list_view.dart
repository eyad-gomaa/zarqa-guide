import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khadamat/features/search/persentation/view/widget/search_list_view_item.dart';
class CustomSearchListViewBuilder extends StatelessWidget {
  const CustomSearchListViewBuilder({Key? key, required this.list}) : super(key: key);
  final List<dynamic> list;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: list.length,
      itemBuilder: (context, index) =>
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push("/DetailsView",extra: list[index]);
            },
            child:  Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: SearchListViewItem(doctorModel: list[index]),
            ),
          ),
    );
  }
}
