part of 'fetch_shops_cubit.dart';

@immutable
abstract class FetchShopsState {}

class FetchShopsInitial extends FetchShopsState {}
class FetchShopsLoading extends FetchShopsState {}
class FetchShopsSuccess extends FetchShopsState {
  final List<DataModel> shopsList;

  FetchShopsSuccess({required this.shopsList});
}
class FetchShopsFailure extends FetchShopsState {
  final String errMessage;
  FetchShopsFailure({required this.errMessage});
}
