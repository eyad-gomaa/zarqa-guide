import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:khadamat/core/widget/Custom_filled_button.dart';
import 'package:khadamat/core/widget/Custom_progress_indicator.dart';
import 'package:khadamat/core/widget/custom_text_form_field.dart';
import 'package:khadamat/core/widget/snack_bar.dart';
import 'package:khadamat/features/category/data/models/doctors.dart';
import 'package:khadamat/features/search/persentation/manager/search_cubit/search_cubit.dart';
import 'package:khadamat/features/search/persentation/view/widget/search_list_view.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({Key? key, required this.collection}) : super(key: key);
final String collection;

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  String? name;
  List<DataModel> list = [];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BlocConsumer<SearchCubit, SearchState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is SearchInitial) {
            return Row(
              children: [
                CustomTextFormField(
                    onChanged: (value) {
                  name = value;
                },
                  validator: true,

                ),
                const SizedBox(width: 10,),
                CustomFilledButton(onTap: () {
                  if (_formKey.currentState!.validate()) {
                    list.clear();
                    BlocProvider.of<SearchCubit>(context)
                        .fetchData(collection: widget.collection);
                  }
                },text: "Search"),
              ],
            );
          } else if (state is SearchSuccess) {
            for (var i = 0; i < state.list.length; i++) {
              if (state.list[i].name.toString().toLowerCase().contains(name!.toLowerCase().trim())) {
                list.add(state.list[i]);
              }
            }
            return Column(
              children: [
                Row(
                  children: [
                    CustomTextFormField(
                        onChanged: (value) {
                      name = value;
                    },
                      validator: true,
                    ),
                    const SizedBox(width: 10,),
                    CustomFilledButton(onTap: () {
                      if (_formKey.currentState!.validate()) {
                        list.clear();
                        BlocProvider.of<SearchCubit>(context)
                            .fetchData(collection: widget.collection);
                      }
                    },text: "Search",
                      width: 100,
                    ),
                  ],
                ),
                Expanded(child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CustomSearchListViewBuilder(list: list),
                )),
              ],
            );
          } else if (state is SearchFailure) {
            return showSnackBar(context: context, text: state.errmessage);
          } else {
            return const CustomProgressIndicator();
          }
        },
      ),
    );
  }
}
