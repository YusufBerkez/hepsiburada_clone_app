import 'package:e_trade_application/models/cards_information.dart';
import 'package:e_trade_application/views/homepage/home_page_card.dart';
import 'package:flutter/material.dart';

class MylistPage extends StatefulWidget {
  const MylistPage({super.key});

  @override
  State<MylistPage> createState() => _MylistPageState();
}

class _MylistPageState extends State<MylistPage> {
  @override
  Widget build(BuildContext context) {
    CardsInformation c1 = CardsInformation(
      name: "Fenerbahçe ",
      description: "Lisanslı 2024/2025 Yeni Sezon Çubuklu Forma",
      price: 2899,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000722320356.jpg/format:webp",
    );

    CardsInformation c2 = CardsInformation(
      name: "adidas",
      description: " Fenerbahçe 2025/26 Yeni Sezon Çubuklu Forma",
      price: 4249,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/222-222/110001087580397.jpg/format:webp",
    );
    CardsInformation c3 = CardsInformation(
      name: "77 ",
      description: "Kanarya Bileklik",
      price: 197,
      imageUrl:
          "https://productimages.hepsiburada.net/s/58/222-222/11328444989490.jpg/format:webp",
    );
    CardsInformation c4 = CardsInformation(
      name: "Ayabak ",
      description:
          "Kupa Bardak - Fenerbahçe Arması Desenli Kupa Bardak - Hediyelik Kupa Bardak",
      price: 249,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110001031450404.jpg/format:webp",
    );
    List<CardsInformation> products = [c1, c2, c3, c4];
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Fenerbahçe",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
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
                  ],
                ),
              ],
            ),

            Spacer(),
            SizedBox(
              height: 35,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.add, color: Colors.orange.shade800),
                    Text(
                      "Ürün Ekle",
                      style: TextStyle(
                        color: Colors.orange.shade800,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  backgroundColor: Colors.orange.shade100,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //Textfield beğendiklerinde ara kısmı
                    Expanded(
                      flex: 8,
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.042,
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
                              hintText: "Liste içinde ara",
                              alignLabelWithHint: true,
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                                color: Colors.grey.shade600,
                              ),
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
                        height: MediaQuery.of(context).size.height * 0.042,
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

              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 5,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return HomePageCard(
                    card: products[index],
                    isVisible: false,
                    visibility: false,
                    isPhone: products[index].isPhone,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
