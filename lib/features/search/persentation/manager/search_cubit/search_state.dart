part of 'search_cubit.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}
class SearchLoading extends SearchState {}
class SearchSuccess extends SearchState {
  final List<DataModel> list;

  SearchSuccess({required this.list});
}
class SearchFailure extends SearchState {
  final String errmessage;

  SearchFailure({required this.errmessage});
}
