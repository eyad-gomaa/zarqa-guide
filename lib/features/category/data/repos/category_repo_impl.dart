import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:khadamat/features/category/data/models/doctors.dart';

import 'category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  @override
  Future<List<DataModel>> fetchDoctors() async {
    List<DataModel> doctorsList = [];
    try {
      final doc = await FirebaseFirestore.instance.collection("doctors").get();
      doc.docs.forEach((element) {
        return doctorsList.add(DataModel.fromJason(element.data()));
      });
      return doctorsList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Failed With Error ${e.code} : ${e.message}");
      }

      return doctorsList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<DataModel>> fetchRestaurants() async{
    List<DataModel> restaurantsList = [];
    try {
      final doc = await FirebaseFirestore.instance.collection("restaurants").get();
      doc.docs.forEach((element) {
        return restaurantsList.add(DataModel.fromJason(element.data()));
      });
      return restaurantsList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Failed With Error ${e.code} : ${e.message}");
      }
      return restaurantsList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<DataModel>> fetchShops() async{
    List<DataModel> shopsList = [];
    try {
      final doc = await FirebaseFirestore.instance.collection("shops").get();
      doc.docs.forEach((element) {
        return shopsList.add(DataModel.fromJason(element.data()));
      });
      return shopsList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Failed With Error ${e.code} : ${e.message}");
      }
      return shopsList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<List<DataModel>> fetchSupport() async {
    List<DataModel> supportList = [];
    try {
      final doc = await FirebaseFirestore.instance.collection("support").get();
      doc.docs.forEach((element) {
        return supportList.add(DataModel.fromJason(element.data()));
      });
      return supportList;
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("Failed With Error ${e.code} : ${e.message}");
      }
      return supportList;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

}