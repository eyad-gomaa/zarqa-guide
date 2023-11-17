import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/doctors.dart';
import '../../../data/repos/category_repo.dart';

part 'fetch_shops_state.dart';

class FetchShopsCubit extends Cubit<FetchShopsState> {
  FetchShopsCubit({required this.repo}) : super(FetchShopsInitial());
  final CategoryRepo repo;
  Future<void> fetchShops() async {
    emit(FetchShopsLoading());
    try {
      final response = await repo.fetchShops();
      emit(FetchShopsSuccess(shopsList: response));
    } on Exception catch (e) {
      emit(FetchShopsFailure(errMessage: e.toString()));
    }
  }
}
