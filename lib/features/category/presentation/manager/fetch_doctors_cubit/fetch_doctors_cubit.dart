
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/category_repo.dart';
import 'fetch_doctors_state.dart';

class FetchDoctorsCubit extends Cubit<FetchDoctorsState> {
  FetchDoctorsCubit(this.Repo) : super(FetchDoctorsInitial());
  final CategoryRepo Repo;
  Future<void> fetchDoctors() async {
    emit(FetchDoctorsLoading());
    try {
      final response = await Repo.fetchDoctors();
      emit(FetchDoctorsSuccess(doctorsList: response));
    } on Exception catch (e) {
      emit(FetchDoctorsFailure(errMessage: e.toString()));
    }
  }
  }



