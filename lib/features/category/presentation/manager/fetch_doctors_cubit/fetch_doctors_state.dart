
import 'package:flutter/cupertino.dart';

import '../../../data/models/doctors.dart';
@immutable
abstract class FetchDoctorsState {}

class FetchDoctorsInitial extends FetchDoctorsState {}
class FetchDoctorsSuccess extends FetchDoctorsState {
  final List<DataModel> doctorsList ;

  FetchDoctorsSuccess({required this.doctorsList});
}
class FetchDoctorsFailure extends FetchDoctorsState {
  final String errMessage;

  FetchDoctorsFailure({required this.errMessage});
}
class FetchDoctorsLoading extends FetchDoctorsState {}
