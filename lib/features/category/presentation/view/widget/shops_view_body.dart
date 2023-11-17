import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/Custom_progress_indicator.dart';
import '../../../../../core/widget/snack_bar.dart';
import '../../manager/fetch_shops_cubit/fetch_shops_cubit.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_builder.dart';

class ShopsViewBody extends StatelessWidget {
  const ShopsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchShopsCubit, FetchShopsState>(
      builder: (context, state) {
        if (state is FetchShopsSuccess){
          return SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomAppBar(title: "Shops",collection: "shops"),
                ),
                Expanded(
                  child: CustomListViewBuilder(list: state.shopsList),
                ),
              ],
            ),
          );

        }else if(state is FetchShopsFailure){
          return showSnackBar(context: context, text: state.errMessage);
        }else{
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
