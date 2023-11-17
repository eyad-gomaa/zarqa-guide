import 'package:bloc/bloc.dart';
import 'package:khadamat/features/category/data/repos/category_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/doctors.dart';

part 'fetch_restaurants_state.dart';

class FetchRestaurantsCubit extends Cubit<FetchRestaurantsState> {
  FetchRestaurantsCubit(this.repo) : super(FetchRestaurantsInitial());
  final CategoryRepo repo;
  Future<void> fetchRestaurants() async {
    emit(FetchRestaurantsLoading());
    try {
      final response = await repo.fetchRestaurants();
      emit(FetchRestaurantsSuccess(restaurantsList: response));
    } on Exception catch (e) {
      emit(FetchRestaurantsFailure(errMessage: e.toString()));
    }
  }
}
