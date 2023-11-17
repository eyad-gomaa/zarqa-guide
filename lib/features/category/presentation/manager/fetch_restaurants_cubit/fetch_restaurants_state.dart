part of 'fetch_restaurants_cubit.dart';

@immutable
abstract class FetchRestaurantsState {}

class FetchRestaurantsInitial extends FetchRestaurantsState {}
class FetchRestaurantsLoading extends FetchRestaurantsState {}
class FetchRestaurantsSuccess extends FetchRestaurantsState {
  final List<DataModel> restaurantsList;

  FetchRestaurantsSuccess({required this.restaurantsList});
}
class FetchRestaurantsFailure extends FetchRestaurantsState {
  final String errMessage;

  FetchRestaurantsFailure({required this.errMessage});

}

