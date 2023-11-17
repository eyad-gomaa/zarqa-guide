
import '../models/doctors.dart';

abstract class CategoryRepo {
  Future<List<DataModel>> fetchDoctors();
  Future<List<DataModel>> fetchRestaurants();
  Future<List<DataModel>> fetchSupport();
  Future<List<DataModel>> fetchShops();
}