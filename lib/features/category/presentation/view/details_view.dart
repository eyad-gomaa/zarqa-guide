import 'package:flutter/material.dart';
import 'package:khadamat/features/category/data/models/doctors.dart';
import 'package:khadamat/features/category/presentation/view/widget/details_view_body.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({Key? key, required this.doctorModel}) : super(key: key);
final DataModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: DetailsViewBody(doctorModel: doctorModel),
    );
  }
}
