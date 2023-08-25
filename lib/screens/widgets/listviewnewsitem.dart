import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_day/cubits/cubit/newscubit_cubit.dart';
import 'package:news_day/models/newsmodel.dart';
import 'package:news_day/screens/widgets/newsitem.dart';
class listviewnewsitem extends StatelessWidget {
  const listviewnewsitem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewscubitCubit,NewscubitState>(
      builder: (context, state) {

        if(state is NewscubitSuccess)
        {
          List<newsmodel> list=state.list;
          return ListView.builder(
        physics:const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
          itemBuilder: (context,index){
            return  newsitem(model: list[index],);
          },
      );
        }
        else if(state is NewscubitLoading)
        {
          return const Center(child: CircularProgressIndicator(),);
        }
        else
        {
          return const Text(
            'faui;er'
          );
        }
      }
    );
  }
}