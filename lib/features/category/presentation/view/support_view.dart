import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamat/features/category/data/repos/category_repo_impl.dart';
import 'package:khadamat/features/category/presentation/view/widget/support_view_body.dart';

import '../manager/fetch_support_cubit/fetch_support_cubit.dart';

class SupportView extends StatelessWidget {
  const SupportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchSupportCubit(CategoryRepoImpl())..fetchSupport(),
      child: const Scaffold(
        body: SupportViewBody(),
      ),
    );
  }
}
