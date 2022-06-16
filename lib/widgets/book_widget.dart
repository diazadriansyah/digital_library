import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../views/home/book_detail_view.dart';
import 'book_data.dart';

class BookWidgetHorizontal extends StatelessWidget {
  const BookWidgetHorizontal({
    Key? key,
    required this.context,
    required this.book,
  }) : super(key: key);

  final BuildContext context;
  final Book book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookDetailView(book: book)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 150,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage(
                      book.image,
                    ),
                    fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(
                height: 10
            ),
            Center(
              child: Text(
                book.title,
                style: TextStyle(
                  fontFamily: "OpenSans"
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                book.author.fullname,
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BookWidgetVertical extends StatelessWidget {
  const BookWidgetVertical({
    Key? key,
    required this.context,
    required this.book,
  }) : super(key: key);

  final BuildContext context;
  final Book book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BookDetailView(book: book)),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(right: 8),
              width: 80,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage(
                      book.image,
                    ),
                    fit: BoxFit.cover
                ),
              ),
            ),
            SizedBox(
                height: 10
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  book.title,
                  style: TextStyle(
                    fontFamily: "OpenSans",
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  book.author.fullname,
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  book.score,
                  style: TextStyle(
                    fontFamily: "OpenSans",
                    fontSize: 14,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}