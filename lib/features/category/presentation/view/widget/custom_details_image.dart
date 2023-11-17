
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';


class CustomDetailsImage extends StatelessWidget {
  const CustomDetailsImage( {Key? key, required this.width, required this.ImageUrl}) : super(key: key);
final double width;
  final String ImageUrl;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 1/1,
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage: CachedNetworkImageProvider(ImageUrl),
          onBackgroundImageError: (exception, stackTrace) => Image.asset("assets/images/profile.png"),
        ),
      ),
    );
  }
}
