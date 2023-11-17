import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/Custom_progress_indicator.dart';
import '../../manager/fetch_restaurants_cubit/fetch_restaurants_cubit.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_builder.dart';

class RestaurantViewBody extends StatelessWidget {
  const RestaurantViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchRestaurantsCubit, FetchRestaurantsState>(
      builder: (context, state) {
        if (state is FetchRestaurantsSuccess){
          return SafeArea(
              child: Column(
                children: [
                   const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomAppBar(title: "Restaurants",collection: "restaurants"),
                  ),
                  Expanded(
                    child: CustomListViewBuilder(list: state.restaurantsList),
                  ),
                ],
              ),
            );

        }else if(State is FetchRestaurantsFailure){
          return const CustomProgressIndicator();
        }else{
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
