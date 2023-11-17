import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/doctors.dart';
import '../../../data/repos/category_repo.dart';

part 'fetch_support_state.dart';

class FetchSupportCubit extends Cubit<FetchSupportState> {
  FetchSupportCubit(this.repo) : super(FetchSupportInitial());
  final CategoryRepo repo;

  Future<void> fetchSupport() async {
    emit(FetchSupportLoading());
    try {
      final response = await repo.fetchSupport();
      emit(FetchSupportSuccess(shopsList: response));
    } on Exception catch (e) {
      emit(FetchSupportFailure(errMessage: e.toString()));
    }
  }
}