import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/book_data.dart';
import '../../widgets/book_widget.dart';
import '../../widgets/button_widget.dart';


class LibraryView extends StatefulWidget {
  @override
  _LibraryViewState createState() => _LibraryViewState();
}

class _LibraryViewState extends State<LibraryView> {

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SearchBarButton2(),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "Programming",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          BookWidgetHorizontal(context: context, book: books[0]),
                          BookWidgetHorizontal(context: context, book: books[1]),
                          BookWidgetHorizontal(context: context, book: books[2]),
                          BookWidgetHorizontal(context: context, book: books[3]),
                          BookWidgetHorizontal(context: context, book: books[4]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "History",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          BookWidgetHorizontal(context: context, book: books[5]),
                          BookWidgetHorizontal(context: context, book: books[6]),
                          BookWidgetHorizontal(context: context, book: books[7]),
                          BookWidgetHorizontal(context: context, book: books[8]),
                          BookWidgetHorizontal(context: context, book: books[9]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "Science",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          BookWidgetHorizontal(context: context, book: books[10]),
                          BookWidgetHorizontal(context: context, book: books[11]),
                          BookWidgetHorizontal(context: context, book: books[12]),
                          BookWidgetHorizontal(context: context, book: books[13]),
                          BookWidgetHorizontal(context: context, book: books[14]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "Sports",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 25, left: 25, right: 25),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 250,
                      child: ListView(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        children: [
                          BookWidgetHorizontal(context: context, book: books[15]),
                          BookWidgetHorizontal(context: context, book: books[16]),
                          BookWidgetHorizontal(context: context, book: books[17]),
                          BookWidgetHorizontal(context: context, book: books[18]),
                          BookWidgetHorizontal(context: context, book: books[19]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}