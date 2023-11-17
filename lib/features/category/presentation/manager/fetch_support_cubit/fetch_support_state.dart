part of 'fetch_support_cubit.dart';

@immutable
abstract class FetchSupportState {}

class FetchSupportInitial extends FetchSupportState {}
class FetchSupportLoading extends FetchSupportState {}
class FetchSupportSuccess extends FetchSupportState {
  final List<DataModel> shopsList;

  FetchSupportSuccess({required this.shopsList});
}
class FetchSupportFailure extends FetchSupportState {
   final String errMessage;

  FetchSupportFailure({required this.errMessage});
}
