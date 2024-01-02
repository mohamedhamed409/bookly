import 'package:bookly/features/home/presentation/view/widgets/book_details_appbar.dart';
import 'package:bookly/features/home/presentation/view/widgets/custom_book_image.dart';
import 'package:bookly/features/home/presentation/view/widgets/rating_books.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'books_action.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailAppbar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(imageUrl: 'https://img.freepik.com/free-vector/background-colored-rockets-flat-design_23-2147644103.jpg?w=740&t=st=1704098780~exp=1704099380~hmac=a6692d4318ad8f21710abed7c4f97acfe73c4eb8643c496955cbddfe03f61530',),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          'The Jungle Book',
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const RatingBooks(
          mainAxisAlignment: MainAxisAlignment.center, count: 300, rating: 5,
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
