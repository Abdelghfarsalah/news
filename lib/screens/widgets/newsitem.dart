import 'package:flutter/material.dart';
import 'package:news_day/models/newsmodel.dart';

class newsitem extends StatelessWidget {
  const newsitem({super.key, required this.model});
  final newsmodel model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: model.image != null
                      ? NetworkImage(model.image!)
                      : NetworkImage(
                          'https://img.freepik.com/free-photo/soccer-players-action-professional-stadium_654080-1180.jpg?w=2000'),
                )),
          ),
          SizedBox(
            width: 20,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            child: Column(
              children: [
                Text(
                  model.title,
                  maxLines: 2,
                  style: ThemeData.light().textTheme.titleLarge!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                    color: Colors.black,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  model.subtitle ?? 'no subtitle',
                  style: ThemeData.light().textTheme.titleLarge!.copyWith(
                    fontSize: 15,
                    color: Colors.black.withOpacity(0.9)
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
