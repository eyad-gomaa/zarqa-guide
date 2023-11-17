import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamat/features/category/data/repos/category_repo_impl.dart';
import 'package:khadamat/features/category/presentation/view/widget/shops_view_body.dart';

import '../manager/fetch_shops_cubit/fetch_shops_cubit.dart';


class ShopsView extends StatelessWidget {
  const ShopsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchShopsCubit(repo: CategoryRepoImpl())..fetchShops(),
      child: Scaffold(
        body: ShopsViewBody(),
      ),
    );
  }
}
