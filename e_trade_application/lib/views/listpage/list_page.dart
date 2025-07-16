import 'package:e_trade_application/views/listpage/myfavorite_page.dart';
import 'package:e_trade_application/views/listpage/mylinks_page.dart';
import 'package:e_trade_application/views/listpage/mylist_page.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Column(
            children: [
              Row(
                children: [
                  //Circle Avatar kısmı
                  CircleAvatar(
                    child: Icon(
                      Icons.person_outline_outlined,
                      color: Colors.grey,
                    ),
                    backgroundColor: Colors.grey.shade300,
                  ),
                  SizedBox(width: 10),
                  //isim takipçi ve takip edilen kısımları
                  Column(
                    children: [
                      Text(
                        "Yusuf Berke Zengin",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Takipçi",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "0",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: " Takip Edilen",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              // SizedBox(height: 16),
              // Divider(height: 0, endIndent: 1),
            ],
          ),

          bottom: TabBar(
            indicatorColor: Colors.deepOrange,
            unselectedLabelColor: Colors.grey,
            labelColor: Colors.black87,
            dividerColor: Colors.grey,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 3,
            tabs: [
              Tab(text: "Beğendiklerim"),
              Tab(text: "Listelerim"),
              Tab(text: "Linkgelir"),
            ],
          ),
        ),
        body: TabBarView(
          children: [MyfavoritePage(), MylistPage(), MylinksPage()],
        ),
      ),
    );
  }
}
