import 'package:digital_library/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/banner_widget.dart';
import '../../widgets/book_data.dart';
import '../../widgets/book_widget.dart';


class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

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
              SearchBarButton1(),
              SizedBox(
                height: 20,
              ),
              BannerWidget(),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "Recommended",
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
                          BookWidgetHorizontal(context: context, book: books[11]),
                          BookWidgetHorizontal(context: context, book: books[5]),
                          BookWidgetHorizontal(context: context, book: books[15]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10, left: 25),
                child: Text(
                  "See Also",
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: "OpenSans",
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                child: Container(
                  padding: EdgeInsets.only(top: 25,left: 25, right: 25),
                  child: ListView(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      BookWidgetVertical(context: context, book: books[4]),
                      BookWidgetVertical(context: context, book: books[12]),
                      BookWidgetVertical(context: context, book: books[6]),
                      BookWidgetVertical(context: context, book: books[16]),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      );
  }
}

