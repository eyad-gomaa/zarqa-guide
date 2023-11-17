import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widget/Custom_progress_indicator.dart';
import '../../../../../core/widget/snack_bar.dart';
import '../../manager/fetch_support_cubit/fetch_support_cubit.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_builder.dart';

class SupportViewBody extends StatelessWidget {
  const SupportViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchSupportCubit, FetchSupportState>(
      builder: (context, state) {
        if (state is FetchSupportSuccess){
          return SafeArea(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomAppBar(title: "Support",collection: "support"),
                ),
                Expanded(
                  child: CustomListViewBuilder(list: state.shopsList),
                ),
              ],
            ),
          );

        }else if(state is FetchSupportFailure){
          return showSnackBar(context: context, text: state.errMessage);
        }else{
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
