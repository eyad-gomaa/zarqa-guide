import 'package:flutter/material.dart';
import 'package:khadamat/features/home/presentation/view/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: HomeViewBody()
    );
  }
}
