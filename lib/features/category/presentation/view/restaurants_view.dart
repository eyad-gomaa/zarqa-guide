import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamat/features/category/data/repos/category_repo_impl.dart';
import 'package:khadamat/features/category/presentation/view/widget/restaurant_view_body.dart';

import '../manager/fetch_restaurants_cubit/fetch_restaurants_cubit.dart';

class RestaurantsView extends StatelessWidget {
  const RestaurantsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchRestaurantsCubit(CategoryRepoImpl())..fetchRestaurants(),
      child: const Scaffold(body: RestaurantViewBody()),
    );
  }
}
