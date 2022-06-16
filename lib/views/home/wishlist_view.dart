import 'package:digital_library/views/register/register_view.dart';
import 'package:digital_library/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/banner_widget.dart';
import '../../widgets/book_data.dart';
import '../../widgets/book_widget.dart';


class WishlistView extends StatefulWidget {
  @override
  _WishlistViewState createState() => _WishlistViewState();
}

class _WishlistViewState extends State<WishlistView> {

  List<NavigationItem> navigationItems = getNavigationItemList();
  late NavigationItem selectedItem;

  List<Book> books = getBookList();
  List<Author> authors = getAuthorList();

  @override
  void initState() {
    super.initState();
    setState(() {
      selectedItem = navigationItems[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Wishlist",
          style: TextStyle(
            fontFamily: "OpenSans",
          ),
        ),
        backgroundColor: Colors.green,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (builder: (context) => RegisterView()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SearchBarButton3(),
            Container(
              child: Container(
                padding: EdgeInsets.only(top: 25,left: 25, right: 25),
                child: ListView(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    BookWidgetVertical(context: context, book: books[0]),
                    BookWidgetVertical(context: context, book: books[0]),
                    BookWidgetVertical(context: context, book: books[0]),
                    BookWidgetVertical(context: context, book: books[0]),
                    BookWidgetVertical(context: context, book: books[0]),
                    BookWidgetVertical(context: context, book: books[0]),
                    BookWidgetVertical(context: context, book: books[0]),
                    BookWidgetVertical(context: context, book: books[0]),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

