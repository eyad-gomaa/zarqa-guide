import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';
import 'category_card.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryCard(title: "Support",imgUrl: AssetsData.supportImg,navigator:"/SupportView"),
                  SizedBox(
                    width: 50,
                  ),
                  CategoryCard(title: "doctors",imgUrl: AssetsData.doctorImg,navigator:"/DoctorsView" ),
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryCard(title: "Restaurants",imgUrl: AssetsData.restaurantImg,navigator: "/RestaurantsView"),
                  SizedBox(
                    width: 50,
                  ),
                  CategoryCard(title: "Shops",imgUrl: AssetsData.shopImg,navigator: "/ShopsView"),
                ],
              ),
            ],
          ),
        ),
      ),
    );

  }
}
