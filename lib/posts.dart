import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: MasonryGridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
           
          ),
          itemCount: 13,
          itemBuilder: (BuildContext ctx, index) {
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("img/p" + index.toString() + ".jpg"),
              ),
            );
          }),
    );
  }
}
