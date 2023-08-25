import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_day/cubits/cubit/newscubit_cubit.dart';
import 'package:news_day/screens/widgets/listviewcategory.dart';
import 'package:news_day/screens/widgets/listviewnewsitem.dart';

class homwView extends StatefulWidget {
  const homwView({super.key});

  @override
  State<homwView> createState() => _homwViewState();
}

class _homwViewState extends State<homwView> {
  @override
  Widget build(BuildContext context) {
    var cubit=BlocProvider.of<NewscubitCubit>(context);
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          
        ],
        //
        title:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'News',
              //style: TextStyle(color: Colors.black),
            ),
            Text('Cloud',
                
                style: ThemeData.dark().textTheme.titleLarge!.copyWith(
                  color: Colors.yellow
                )
                ),
          ],
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: listviewCategoryitme(),
              ),
            const  SliverToBoxAdapter(
                child: SizedBox(
                  height: 16,
                ),
              ),
            const  SliverToBoxAdapter(child: listviewnewsitem())
            ],
          )),
    );
  }
}
