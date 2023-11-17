import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamat/features/category/data/repos/category_repo_impl.dart';
import 'package:khadamat/features/category/presentation/manager/fetch_doctors_cubit/fetch_doctors_cubit.dart';
import 'package:khadamat/features/category/presentation/view/widget/doctors_view_body.dart';


class DoctorsView extends StatelessWidget {
  const DoctorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchDoctorsCubit(CategoryRepoImpl())..fetchDoctors(),
      child: const DoctorsViewBody(),
    );
  }
}
