import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/doctors.dart';
import 'custom_details_image.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({Key? key, required this.doctorModel}) : super(key: key);
  final DataModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        CustomDetailsImage(
            width: MediaQuery.of(context).size.width* .12,
          ImageUrl: doctorModel.image!,
        ),
        const SizedBox(width: 20,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Text(doctorModel.name,
               style: Styles.TextStyle20,
               overflow: TextOverflow.ellipsis,
             ),
            Text(doctorModel.specialization,
              style: Styles.TextStyle18,
            ),
          ],
        )
      ],
    );
  }
}
