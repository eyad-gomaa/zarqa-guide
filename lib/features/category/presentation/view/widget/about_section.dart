import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:khadamat/features/category/data/models/doctors.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/utils/styles.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({Key? key, required this.doctorModel}) : super(key: key);
  final DataModel doctorModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.topLeft,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About",
                style: Styles.TextStyle27,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                doctorModel.about,
                style:
                    Styles.TextStyle18.copyWith(fontWeight: FontWeight.normal),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () async {
                        if (doctorModel.instaUrl != " ") {
                          Uri uri = Uri.parse(doctorModel.instaUrl);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(
                              uri,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        }
                      },
                      icon: const Icon(
                        FontAwesomeIcons.instagram,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () async {
                        if (doctorModel.instaUrl != " ") {
                          Uri uri = Uri.parse(doctorModel.faceUrl);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(
                              uri,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        }
                      },
                      icon: const Icon(
                        FontAwesomeIcons.facebook,
                        size: 30,
                      )),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text("Address", style: Styles.TextStyle27),
              const SizedBox(
                height: 15,
              ),
              Text(
                doctorModel.address,
                style:
                    Styles.TextStyle18.copyWith(fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
