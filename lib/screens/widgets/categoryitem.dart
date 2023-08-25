import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_day/cubits/cubit/newscubit_cubit.dart';
import 'package:news_day/models/categorymodel.dart';
class itemcategory extends StatelessWidget {
  const itemcategory({super.key,required this.model});
  final categorymodel model;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        BlocProvider.of<NewscubitCubit>(context).getnewssport(category:model.category);
      },
      child: AspectRatio(
        aspectRatio: 0.7/0.4,
        child: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(model.image))),
            child: Center(child: Text(model.category,
            style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w900),)),
          ),
        ),
        ),
    );
  }
}