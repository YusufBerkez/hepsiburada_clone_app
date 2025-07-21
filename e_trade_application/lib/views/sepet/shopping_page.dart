import 'dart:math';

import 'package:e_trade_application/data/datahelper.dart';
import 'package:e_trade_application/models/cards_information.dart';
import 'package:e_trade_application/views/listpage/myfavorite_page.dart';
import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  CardsInformation c1 = CardsInformation(
    name: "Eğitim Vadisi",
    description: "9.Sınıf Matematik Modüler Soru Bankası",
    price: 100,
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
  bool isCheckbox = true;
  @override
  Widget build(BuildContext context) {
    int toplam = 0;
    
    
    List<CardsInformation> cards = [c1, c2, c3, c4];
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      //Appbar kısmı
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Sepetim ",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "(1 ürün)",
                    style: TextStyle(color: Colors.grey.shade400),
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(Icons.delete_outline_rounded, color: Colors.orange),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              //Kuponlarım ve kupon kodu ekle kısmı
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  constraints: BoxConstraints(minHeight: 50),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.wallet_giftcard_rounded,
                          color: Colors.deepOrange,
                        ),
                        SizedBox(width: 5),
                        Text(
                          "Kuponlarım",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(Icons.keyboard_arrow_right_outlined),
                        Spacer(),
                        Text(
                          "Kupon kodu ekle",
                          style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.add, color: Colors.orange),
                      ],
                    ),
                  ),
                ),
              ),

              //Sepetim listesi
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: cardss.length,
                itemBuilder: (context, index) {
                  return shoppingMethod(
                    context,
                    cardss[index].name,
                    cardss[index].description,
                    cardss[index].imageUrl,
                    index,
                  );
                },
              ),

              SizedBox(height: 10),
              //Premium banner kısmı
              Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                        //Expanded ile genişliği sınırlamazsan hata verir.
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Row(
                              children: [
                                Text(
                                  "PREMIUM",
                                  style: TextStyle(
                                    letterSpacing: 4,
                                    color: Colors.pink,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        "49, 90 TL'ye Premiuma'a geç, kargo bedava ve hepsipara avantajları ile ",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: "229,80 TL ",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "tasarruf et",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.pinkAccent,
                            width: 3,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            "Şimdi Geç",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.pinkAccent,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10),
              //Beğendiklerim yazısı
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Beğendiklerim",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      //Beğendiklerim yazısının altındaki çizgi responsive için düşün!!
                      Row(
                        children: [
                          Container(
                            width:
                                MediaQuery.of(context).size.width *
                                0.25, // Alt çizginin genişliği
                            height: 3, // Kalınlığı
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.orange.shade200,
                                  Colors.deepOrange,
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.39,
                        child: ListView.builder(
                          itemCount: cards.length,
                          itemBuilder: (context, index) {
                            return Card(
                              color: Colors.white,
                              child: FavoriteSaleCardWidget(
                                information: cards[index],
                                percent: Random().nextInt(20) + 1,
                              ),
                            );
                          },
                          scrollDirection: Axis.horizontal,

                          // Container(
                          //   height: 250,
                          //   width: 200,
                          //   color: Colors.white,
                          //   child: Column(
                          //     children: [
                          //       Image.network(
                          //         "https://productimages.hepsiburada.net/s/40/222-222/10660756357170.jpg/format:webp",
                          //       ),
                          //       Text("Eğitim Vadisi Yayınları")
                          //     ],
                          //   ),
                          // ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,

        constraints: BoxConstraints(maxHeight: 100, minHeight: 80),

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Seçilen Ürünler (1)",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "233,82 TL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_up_outlined,
                        color: Colors.orange,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        color: Colors.green,
                      ),
                      Text(
                        "45,98 TL",
                        style: TextStyle(
                          color: Colors.green.shade800,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(" kazanç", style: TextStyle(color: Colors.green)),
                    ],
                  ),
                ],
              ),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ödemeye Geç",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container shoppingMethod(
    BuildContext context,
    String productName,
    String productDescription,
    String imgUrl,
    int index,
  ) {
    return Container(
      constraints: BoxConstraints(minHeight: 270, maxHeight: 280),
      height: MediaQuery.of(context).size.height * 0.3,
      color: Colors.white,
      child: Column(
        children: [
          //Checkbox üstündeki kısımı satıcı bilgisi ve kargo bedavası için gereken tutat kısmı
          Row(
            children: [
              Text("Satıcı: ", style: TextStyle(fontSize: 13)),
              Text(
                productName,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              Icon(Icons.keyboard_arrow_right_rounded, size: 16),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  width: 200,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Kargonuzun bedava olması için ",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: "116.08 TL'lik ",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: "ürün daha ekleyin",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.keyboard_arrow_right_outlined),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Divider(color: Colors.grey.shade200),

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(Icons.local_shipping_outlined, size: 15),
                Text(
                  "Tahmini 3 temmuz Perşembe kapında",
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Checkbox kısmı
              Container(
                height: 100,
                child: Checkbox(
                  checkColor: Colors.white,
                  activeColor: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  // splashRadius: 100, Animasyonla alakalıymış arkadaki kutunun yuvarlaklığüını bu belirlemez
                  value: isCheckbox,
                  onChanged: (gelenValue) {
                    isCheckbox = gelenValue!;
                    setState(() {});
                  },
                ),
              ),
              //Resim ve ekleme kısmı
              Column(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(imgUrl, fit: BoxFit.cover),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      width: 90,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade300),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (cardss[index].count == 1) {
                                cardss.removeAt(index);
                              } else {
                                cardss[index].count--;
                              }
                              setState(() {});
                            },
                            child: Icon(
                              cardss[index].count == 1
                                  ? Icons.delete_outline_outlined
                                  : Icons.remove,
                              color: Colors.orange,
                            ),
                          ),
                          Text(
                            cardss[index].count.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),

                          GestureDetector(
                            onTap: () {
                              cardss[index].count++;
                              setState(() {});
                            },
                            child: Icon(Icons.add, color: Colors.orange),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Expanded(
                child: Container(
                  constraints: BoxConstraints(minHeight: 80, maxHeight: 100),
                  height: MediaQuery.of(context).size.height * 0.1,
                  // color: Colors.red,
                  child: Column(
                    mainAxisSize:
                        MainAxisSize.min, //İçeriği kadar yer kaplamasını sağlar
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        productDescription,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        maxLines: 2, //maksimum satırı belirler
                        overflow:
                            TextOverflow
                                .ellipsis, //Maxlinesı aştığı zaman 3 nokta koyar
                      ),
                      SizedBox(
                        height: 2,
                      ), // Yazıyla kutu arasında az bir boşluk bırakır
                      //kartsız ve karta taksit yapılmaz yazısı
                      Row(
                        children: [
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 222, 243),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.monetization_on_outlined, size: 16),
                                Text(
                                  "Kartsız 3x ",
                                  style: TextStyle(
                                    color: Colors.deepPurple,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: 16,
                                  width: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: Colors.deepPurple,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Text(
                                    "72 TL",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 20,
                            decoration: BoxDecoration(
                              color: Colors.lightBlue.shade50,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.credit_card_off_outlined,
                                  size: 16,
                                  color: Colors.lightBlue,
                                ),
                                SizedBox(width: 3),
                                Text(
                                  "Karta taksit yapılamaz",
                                  style: TextStyle(
                                    color: Colors.lightBlueAccent.shade200,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //Kazancımı gör yazısı ve fiyat kısmı
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 40,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffEAF7E1),
                    ),
                    child: Row(
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kazancımı gör",
                              style: TextStyle(
                                color: Color(0xff409B3A),
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "45,98 TL",
                              style: TextStyle(
                                color: Color(0xff2F7B2A),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        VerticalDivider(),
                        Icon(Icons.keyboard_arrow_down_outlined),
                      ],
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    (cardss[index].price * cardss[index].count).toString(),
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
