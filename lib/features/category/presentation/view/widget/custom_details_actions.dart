import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../data/models/doctors.dart';
import 'custom_button.dart';

class CustomDetailsActions extends StatelessWidget {
  const CustomDetailsActions({Key? key, required this.doctorModel,}) : super(key: key);
  final DataModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
            child: CustomButton(
              onPressed: ()async{
                if(doctorModel.whatsapp != " "){
                  Uri uri = Uri.parse("https://api.whatsapp.com/send?phone=2${doctorModel.whatsapp}");
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri,mode:LaunchMode.externalApplication,);
                  }
                }

              },
          backGroundColor: Colors.green,
              childText: "WhatsApp",
              textColor: Colors.white,
              leftRadius: 16,
              rightRadius: 0,
            )
        ),
        Expanded(
            child: CustomButton(
              onPressed: () async {
                if(doctorModel.number != " "){
                  Uri uri = Uri.parse("tel:${doctorModel.number}");
                  if (await canLaunchUrl(uri)) {
                    await launchUrl(uri);
                  }
                }

              },
              backGroundColor: Colors.white,
              childText: "phone Number",
              textColor: Colors.black,
              leftRadius: 0,
              rightRadius: 16,
            )
        ),
      ],
    );
  }
}
