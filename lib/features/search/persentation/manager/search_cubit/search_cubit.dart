import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';

import '../../../../category/data/models/doctors.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(SearchInitial());

  Future<void> fetchData({required String collection}) async {
    emit(SearchLoading());
    List<DataModel> list = [];
    try {
      final doc = await FirebaseFirestore.instance.collection(collection).get();
      doc.docs.forEach((element) {
        return list.add(DataModel.fromJason(element.data()));
      });

      emit(SearchSuccess(list:list ));
    } on FirebaseException catch (e) {
      emit(SearchFailure(errmessage: e.toString()));
    }
  }
}