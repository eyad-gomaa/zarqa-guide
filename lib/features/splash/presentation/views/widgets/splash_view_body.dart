import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khadamat/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  Timer? _timer;
  _startDelay(){
    _timer = Timer(const Duration(seconds: 5), _goNext );
  }

  _goNext(){
    GoRouter.of(context).push("/HomeView");
  }
  @override
  void initState() {
    _startDelay();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
            AssetsData.logoImg,
          width: MediaQuery.of(context).size.width * 0.4,
        )
    );
  }
  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }
}
