import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: CustomBookImage(
                  imageUrl:
                      'https://img.freepik.com/free-vector/background-colored-rockets-flat-design_23-2147644103.jpg?w=740&t=st=1704098780~exp=1704099380~hmac=a6692d4318ad8f21710abed7c4f97acfe73c4eb8643c496955cbddfe03f61530',
                ),
              )),
    );
  }
}
