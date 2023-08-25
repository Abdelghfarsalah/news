import 'package:flutter/material.dart';
import 'package:news_day/models/categorymodel.dart';
import 'package:news_day/screens/widgets/categoryitem.dart';

class listviewCategoryitme extends StatelessWidget {
  listviewCategoryitme({super.key});
    List<categorymodel> listcategory=[
    categorymodel(category: 'Business', image: 'https://img.freepik.com/free-photo/business-people-shaking-hands-together_53876-30568.jpg'),
    categorymodel(category: 'Entertainment', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSThoGJ0YYWlkEAowqwnrfAXF0TSZ8dOvLUvlM8L5bjWfBbKBu4it33vG9efWMLChquR3E&usqp=CAU'),
    categorymodel(category: 'Health', image: 'https://img.freepik.com/free-photo/medical-stethoscope-with-paper-cut-family_23-2148488217.jpg'),
    categorymodel(category: 'science', image: 'https://images.theconversation.com/files/430261/original/file-20211104-25-1t7f05u.png?ixlib=rb-1.1.0&rect=35%2C17%2C2309%2C1288&q=45&auto=format&w=926&fit=clip'),
    categorymodel(category: 'technology', image: 'https://media.istockphoto.com/id/1295900106/photo/data-scientists-male-programmer-using-laptop-analyzing-and-developing-in-various-information.jpg?s=612x612&w=0&k=20&c=2z9VEOlF7mAgeZDEsnetqFMyQS6xqjmXDoryrQ_LeOc='),
        categorymodel(category: 'Sports', image: 'https://st.depositphotos.com/1229718/1910/i/450/depositphotos_19103837-stock-photo-sports-equipment.jpg'),
    categorymodel(category: 'general', image: 'https://images.unsplash.com/photo-1609599006353-e629aaabfeae?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cXVyYW58ZW58MHx8MHx8fDA%3D&w=1000&q=80'),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*0.15,
      child: ListView.builder(
        physics:const BouncingScrollPhysics(),
        itemCount: listcategory.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return itemcategory(model: listcategory[index]);
        }),
    );
  }
}