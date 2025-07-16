import 'dart:math';

import 'package:e_trade_application/models/cards_information.dart';
import 'package:e_trade_application/views/detailspage/details_page.dart';
import 'package:e_trade_application/views/homepage/home_page_card.dart';
import 'package:flutter/material.dart';

class MyfavoritePage extends StatefulWidget {
  const MyfavoritePage({super.key});

  @override
  State<MyfavoritePage> createState() => _MyfavoritePageState();
}

class _MyfavoritePageState extends State<MyfavoritePage> {
  @override
  Widget build(BuildContext context) {
    CardsInformation c1 = CardsInformation(
      name: "Eğitim Vadisi Yayınları ",
      description: "9.Sınıf Matermatik Modüler Srou Bankası",
      price: 109,
      imageUrl:
          "https://productimages.hepsiburada.net/s/40/222-222/10660756357170.jpg/format:webp",
    );
    CardsInformation c2 = CardsInformation(
      name: "Head&Shoulders",
      description: " Clinical Strength Şampuan 400 ml",
      price: 1799,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/200-200/110001076154376.jpg/format:webp",
    );

    CardsInformation c3 = CardsInformation(
      name: "Roborock ",
      description: "S8 Maxv Ultra Akıllı Robot Süpürge Beyaz",
      price: 47999,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000668043593.jpg/format:webp",
    );
    CardsInformation c4 = CardsInformation(
      name: "Fenerbahçe ",
      description: "Lisanslı 2024/2025 Yeni Sezon Çubuklu Forma",
      price: 2899,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000722320356.jpg/format:webp",
    );
    CardsInformation sc1 = CardsInformation(
      name: "Philips ",
      description: "Marathon Daily XB7150/07 Toz Torbasız Süpürge",
      price: 8999,
      imageUrl:
          "https://productimages.hepsiburada.net/s/544/424-600/110000603946404.jpg/format:webp",
    );

    CardsInformation sc2 = CardsInformation(
      name: "Maybelline New York ",
      description: "Colossal Bubble Maskara",
      price: 399.9,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000987074322.jpg/format:webp",
    );

    CardsInformation sc3 = CardsInformation(
      name: "L'Oréal Paris ",
      description: "Telescopic Siyah Uzun Görünüm Veren Maskara",
      price: 320,
      imageUrl:
          "https://productimages.hepsiburada.net/s/239/424-600/110000222620468.jpg/format:webp",
    );
    List<CardsInformation> allCards = [c1, c2, c3, c4];
    List<CardsInformation> adsCards = [sc1, sc2, sc3];

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Icon(
              Icons.bookmark_border,
              size: MediaQuery.of(context).size.height * 0.016,
            ),
            SizedBox(width: 5),
            Text("0", style: TextStyle(fontSize: 15)),
            SizedBox(width: 5),
            Icon(
              Icons.circle,
              size: MediaQuery.of(context).size.height * 0.007,
              color: Colors.grey,
            ),
            SizedBox(width: 5),
            Icon(
              Icons.remove_red_eye_outlined,
              size: MediaQuery.of(context).size.height * 0.016,
            ),
            SizedBox(width: 5),
            Text("0", style: TextStyle(fontSize: 15)),
            Spacer(),
            Text("1 Ürün", style: TextStyle(fontSize: 15)),
          ],
        ),
        // bottom: PreferredSize(
        //   preferredSize: Size(
        //     MediaQuery.of(context).size.width,
        //     MediaQuery.of(context).size.height * 0.03,
        //   ),
        //   child: Container(
        //     color: Colors.grey,
        //     child: Row(
        //       children: [
        //         //TextFormFielda dönüştürebiliriz.
        //         Expanded(
        //           child: TextField(
        //             decoration: InputDecoration(
        //               prefixIcon: Icon(Icons.search),
        //               hintText: "Beğendiklerinde Ara",
        //               enabledBorder: OutlineInputBorder(
        //                 borderRadius: BorderRadius.circular(10),
        //               ),
        //             ),
        //           ),
        //         ),
        //       ],
        //     ),
        //   ),
        // ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Textfield ve gönderi düzenleme kısmı
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //Textfield beğendiklerinde ara kısmı
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.05,
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Colors.grey.shade400,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(5),
                              filled: true,
                              fillColor: Colors.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: "Beğendiklerinde Ara",
                              alignLabelWithHint: true,
                              prefixIcon: Icon(Icons.search, size: 25),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    //Gönderme düzenleme kısmı
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey.shade400,
                            ),
                          ],
                          // border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.file_upload_outlined),
                              Icon(Icons.edit),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Kategoriler stoktakiler fiyatı düşenler kısmı
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Icon(Icons.swap_vert),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "Kategoriler",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "Stoktakiler",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.035,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "Fiyatı Düşenler",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Listview kısmı
              Container(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.39,
                  child: ListView.builder(
                    itemCount: allCards.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return FavoriteSaleCardWidget(
                        information: allCards[index],
                        percent: Random().nextInt(20) + 1,
                      );
                    },
                  ),
                ),
              ),

              //Önerilen reklam önerileri kısmı Listview.builder
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Önerilen Reklamlı ürünler",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.39,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              FavoriteAdCardWidget(
                                information: adsCards[0],
                                taksit: 9,
                              ),
                              SizedBox(width: 10),
                              FavoriteAdCardWidget(
                                information: adsCards[1],
                                taksit: 3,
                              ),
                              SizedBox(width: 10),
                              FavoriteAdCardWidget(
                                information: adsCards[2],
                                taksit: 3,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      //floating action buton kısmı
      floatingActionButton: SizedBox(
        height: 40,
        width: 100,
        child: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white60),
                ),
                child: Icon(Icons.add, color: Colors.white60, size: 15),
              ),
              Text("Yeni Liste", style: TextStyle(color: Colors.white)),
            ],
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        ),
      ),
    );
  }
}

class FavoriteAdCardWidget extends StatefulWidget {
  final CardsInformation information;
  final int taksit;

  const FavoriteAdCardWidget({
    super.key,
    required this.information,
    required this.taksit,
  });

  @override
  State<FavoriteAdCardWidget> createState() => _FavoriteAdCardWidgetState();
}

class _FavoriteAdCardWidgetState extends State<FavoriteAdCardWidget> {
  bool isClick = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => DetailsPage(
                  name: widget.information.name,
                  imgUrl: widget.information.imageUrl,
                  description: widget.information.description,
                  price: widget.information.price.toInt(),
                  visibility: false,
                ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        // height: MediaQuery.of(context).size.height * 0.43,
        width: MediaQuery.of(context).size.width * 0.5,
        child: Stack(
          children: [
            Column(
              children: [
                //Resim kısmı
                Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.5,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        widget.information.imageUrl,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                //Alt container
                Expanded(
                  child: Container(
                    child: SizedBox(
                      // width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: widget.information.name,
                                          style: TextStyle(
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(
                                          text: widget.information.description,
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //Değerlendirme yazısı
                                Row(
                                  children: [
                                    SizedBox(width: 5),
                                    Icon(
                                      Icons.star,
                                      color: Colors.deepOrange,
                                      size: 17,
                                    ),
                                    Text(
                                      " 4,7 ",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12,
                                      ),
                                    ),
                                    Text(
                                      "(32)",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Fiyat ve sepete ekle butonu
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.height * 0.045,
                              color: Colors.grey.shade200,
                              child: Row(
                                children: [
                                  Text(
                                    "${(widget.information.price).toInt()} TL",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,

                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Icon(Icons.add_shopping_cart_outlined),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 58,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Peşin",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    Text(
                      "Fiyatına",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 10,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${widget.taksit}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "Taksit",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isClick = !isClick;
                    });
                  },
                  icon:
                      isClick
                          ? SizedBox(
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 21,
                            ),
                          )
                          : Icon(Icons.favorite_border, size: 20),
                  style: IconButton.styleFrom(backgroundColor: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteSaleCardWidget extends StatefulWidget {
  final CardsInformation information;

  final int percent;

  const FavoriteSaleCardWidget({
    super.key,
    required this.information,

    required this.percent,
  });

  @override
  State<FavoriteSaleCardWidget> createState() => _FavoriteSaleCardWidgetState();
}

class _FavoriteSaleCardWidgetState extends State<FavoriteSaleCardWidget> {
  bool isClick = true;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => DetailsPage(
                  name: widget.information.name,
                  imgUrl: widget.information.imageUrl,
                  description: widget.information.description,
                  price: widget.information.price.toInt(),
                  visibility: false,
                ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          // height: MediaQuery.of(context).size.height * 0.43,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Stack(
            children: [
              Column(
                children: [
                  //Resim kısmı
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(5),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          widget.information.imageUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  //Alt container
                  Expanded(
                    child: Container(
                      child: SizedBox(
                        // width: MediaQuery.of(context).size.width * 0.5,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: widget.information.name,
                                            style: TextStyle(
                                              color: Colors.black87,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                widget.information.description,
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  //Değerlendirme yazısı
                                  Row(
                                    children: [
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.star,
                                        color: Colors.deepOrange,
                                        size: 17,
                                      ),
                                      Text(
                                        " 4,7 ",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        "(32)",
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            //Fiyat ve sepete ekle butonu
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.045,
                                color: Colors.grey.shade200,
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "${(widget.information.price).toInt()} TL",
                                              style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontWeight: FontWeight.bold,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                decorationColor: Colors.grey,
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              "%${widget.percent}",
                                              style: TextStyle(
                                                color: const Color.fromARGB(
                                                  255,
                                                  22,
                                                  134,
                                                  24,
                                                ),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            RichText(
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text:
                                                        (widget
                                                                    .information
                                                                    .price -
                                                                (widget
                                                                        .information
                                                                        .price *
                                                                    0.01 *
                                                                    widget
                                                                        .percent))
                                                            .toInt()
                                                            .toString(),
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                            255,
                                                            22,
                                                            134,
                                                            24,
                                                          ),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: "TL",
                                                    style: TextStyle(
                                                      color:
                                                          const Color.fromARGB(
                                                            255,
                                                            22,
                                                            134,
                                                            24,
                                                          ),
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Spacer(),
                                    Icon(Icons.add_shopping_cart_outlined),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.topRight,
                child: SizedBox(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        isClick = !isClick;
                      });
                    },
                    icon:
                        isClick
                            ? Icon(Icons.favorite, color: Colors.red, size: 21)
                            : Icon(Icons.favorite_border, size: 20),
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: Size(10, 10),
                    ),
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
