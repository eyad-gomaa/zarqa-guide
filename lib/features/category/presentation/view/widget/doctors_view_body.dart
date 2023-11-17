import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamat/core/widget/Custom_progress_indicator.dart';
import 'package:khadamat/features/category/presentation/manager/fetch_doctors_cubit/fetch_doctors_cubit.dart';
import 'package:khadamat/features/category/presentation/manager/fetch_doctors_cubit/fetch_doctors_state.dart';
import 'custom_app_bar.dart';
import 'custom_list_view_builder.dart';

class DoctorsViewBody extends StatelessWidget {
  const DoctorsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchDoctorsCubit, FetchDoctorsState>(
      builder: (context, state) {
        if (state is FetchDoctorsSuccess){
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CustomAppBar(title: "Doctors",collection: "doctors"),
                  ),
                  Expanded(
                    child: CustomListViewBuilder(list: state.doctorsList),
                  ),
                ],
              ),
            ),
          );
        }else if(State is FetchDoctorsFailure){
          return const CustomProgressIndicator();
        }else{
          return const CustomProgressIndicator();
        }
      },
    );
  }
}
