
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamat/features/search/persentation/manager/search_cubit/search_cubit.dart';
import 'package:khadamat/features/search/persentation/view/widget/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key, required this.collection}) : super(key: key);
final String collection;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(),
      child: Scaffold(
        body: SafeArea(child: Padding(
          padding: const EdgeInsets.all(20),
          child: SearchViewBody(collection: collection,),
        )),
      ),
    );
  }
}
