import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:khadamat/core/utils/styles.dart';

import '../../../data/models/doctors.dart';
import 'about_section.dart';
import 'custom_details_actions.dart';
import 'custom_details_image.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({Key? key, required this.doctorModel}) : super(key: key);
  final DataModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(children: [
              IconButton(onPressed: (){GoRouter.of(context).pop();}, icon: const Icon(Icons.arrow_back_ios))
            ],),
            const SizedBox(height: 30,),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 CustomDetailsImage(width: MediaQuery.of(context).size.width * .3,ImageUrl:doctorModel.image! ),
              ],
            ),
            const SizedBox(height: 30,),
             Text(doctorModel.name,style: Styles.TextStyle30,textAlign: TextAlign.center,),
            const SizedBox(height: 20,),
            Text(doctorModel.specialization,style: Styles.TextStyleOpacity20,),
            const SizedBox(height: 20,),
             CustomDetailsActions(doctorModel: doctorModel,),
            const SizedBox(height: 20,),
             AboutSection(doctorModel: doctorModel,)
          ],
        ),
      ),
    );
  }
}
