import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_item.dart';
import '../dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25.0),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 300,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20.0,
        mainAxisSpacing: 20.0,
      ),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(
                id: catData.id,
                color: catData.color,
                title: catData.title,
              ))
          .toList(),
    );
  }
}
