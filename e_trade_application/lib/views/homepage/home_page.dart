import 'package:e_trade_application/models/cards_information.dart';
import 'package:e_trade_application/views/homepage/home_page_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int buttonIndex = 0;
  @override
  Widget build(BuildContext context) {
    CardsInformation c1 = CardsInformation(
      name: "Redmi ",
      price: 18399,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/444-444/110000871187553.jpg/format:webp",
      description: "Note 14 Pro 12GB 512GB (Xiaomi Türkiye Garantili)",
    );
    CardsInformation c2 = CardsInformation(
      description: " Redmı NOTE11 Pro yenilenmiş Füme Renk 12ay garantili",
      name: "Redmi",
      price: 10599,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/444-444/110000965780313.jpg/format:webp",
    );
    CardsInformation c3 = CardsInformation(
      name: "Redmi ",
      description: "Note 14 Pro 8GB 256GB (Xiaomi Türkiye Garantili)",
      price: 16149,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/444-444/110000870880369.jpg/format:webp",
    );

    CardsInformation c4 = CardsInformation(
      name: "Samsung ",
      description: " Galaxy S24+ 256 GB 12 GB Ram (Samsung Türkiye Garantili)",
      price: 38299,
      imageUrl:
          "https://productimages.hepsiburada.net/s/538/200-200/110000596687267.jpg/format:webp",
    );
    CardsInformation c5 = CardsInformation(
      name: "Grundig ",
      description: " FK 4311 B Filtre Kahve Makinesi",
      price: 1399,
      imageUrl:
          "https://productimages.hepsiburada.net/s/504/200-200/110000558021201.jpg/format:webp",
    );
    CardsInformation c6 = CardsInformation(
      name: "Byoztek ",
      description: " Sony Ps4 Dualshock Orjinal V2 Titreşimli Kol",
      price: 699,
      imageUrl:
          "https://productimages.hepsiburada.net/s/254/200-200/110000236639147.jpg/format:webp",
    );

    List<CardsInformation> cards = [c1, c2, c4, c3, c6, c5];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              flex: 8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Ürün, kategori, veya marka ara",
                  hintStyle: TextStyle(fontSize: 13, color: Colors.grey),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.camera_alt_outlined),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
            ),
            SizedBox(width: 5),
            Expanded(
              flex: 2,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.2,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          color: Colors.orange,
                          size: MediaQuery.of(context).size.height * 0.013,
                        ),
                        Expanded(
                          child: Text(
                            "Yusuf Ber...",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.013,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("Istanbul", style: TextStyle(fontSize: 15)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Premium ve hepsipay cardları
              Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color.fromARGB(255, 49, 2, 58),
                              Colors.purple,
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 4,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "PREMIUM",
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 5,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Kargo Bedava",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                //Hepsi pay yazısı
                                Row(
                                  children: [
                                    Container(
                                      width:
                                          MediaQuery.of(context).size.width *
                                          0.15,
                                      child: Image.network(
                                        "https://cdn.prod.website-files.com/653aeec087292b830db7180e/65a97b1fbf8bfe24442c9fc5_HEPSI%CC%87PAY.png",
                                      ),
                                    ),
                                    VerticalDivider(
                                      thickness: 2,
                                      color: Colors.black,
                                    ),
                                    Text(
                                      "0,00 TL",
                                      style: TextStyle(
                                        color: Colors.purple,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),

                                Text(
                                  "Her yerde %3 kazan",
                                  style: TextStyle(color: Colors.grey.shade600),
                                ),
                              ],
                            ),

                            Spacer(),
                            Column(
                              children: [
                                Icon(
                                  Icons.keyboard_arrow_right_outlined,
                                  color: Colors.purple,
                                ),
                              ],
                            ),
                            VerticalDivider(
                              color: Colors.grey,
                              thickness: 100,
                              width: 2,
                            ),
                            Column(
                              children: [
                                Icon(Icons.qr_code, color: Colors.purple),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              //Resim alanı-PageView Entegrasyonu yapılacak.
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Image.network(
                          "https://images.hepsiburada.net/banners/s/1/1280-400/yaz_always_on_elektronik_slider_(2)133955003127975328.png/format:webp",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Listview alanı
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.12,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TopCardWidget(
                      imgUrl:
                          "https://images.hepsiburada.net/banners/s/1/360-360/gra-194911-elektronik-jenerik-tr-2_(1)133915081434232123.png/format:webp",
                    ),
                    TopCardWidget(
                      imgUrl:
                          "https://images.hepsiburada.net/banners/s/1/360-360/teknoloji_urunleri-tr133912569339745083.png/format:webp",
                    ),
                    TopCardWidget(
                      imgUrl:
                          "https://images.hepsiburada.net/banners/s/1/360-360/madenler_bayrami-tr_(3)133904000248075095.png/format:webp",
                    ),
                    TopCardWidget(
                      imgUrl:
                          "https://images.hepsiburada.net/banners/s/1/360-360/bahce_ve_balkon-tr133876313088642769.png/format:webp",
                    ),
                    TopCardWidget(
                      imgUrl:
                          "https://images.hepsiburada.net/banners/s/1/360-360/gra-198040-yaz-modasi-tr133960946150463714.png/format:webp",
                    ),
                  ],
                ),
              ),

              //Sana özel avantajlı ürünler vs
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonIndex == 0
                                  ? Colors.deepOrange
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            buttonIndex = 0;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.diamond,
                              color:
                                  buttonIndex == 0
                                      ? Colors.white
                                      : Colors.orange,
                            ),
                            SizedBox(width: 3),
                            Text(
                              "Sana özel",
                              style: TextStyle(
                                color:
                                    buttonIndex == 0
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 3),

                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonIndex == 1
                                  ? Colors.deepOrange
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            buttonIndex = 1;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.diamond,
                              color:
                                  buttonIndex == 1
                                      ? Colors.white
                                      : Colors.orange,
                            ),
                            SizedBox(width: 3),
                            Text(
                              "Avantajlı ürünler",
                              style: TextStyle(
                                color:
                                    buttonIndex == 1
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 3),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonIndex == 2
                                  ? Colors.deepOrange
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            buttonIndex = 2;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.diamond,
                              color:
                                  buttonIndex == 2
                                      ? Colors.white
                                      : Colors.orange,
                            ),
                            SizedBox(width: 3),
                            Text(
                              "Popüler ürünler",
                              style: TextStyle(
                                color:
                                    buttonIndex == 2
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 3),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              buttonIndex == 3
                                  ? Colors.deepOrange
                                  : Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          setState(() {
                            buttonIndex = 3;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.diamond,
                              color:
                                  buttonIndex == 3
                                      ? Colors.white
                                      : Colors.orange,
                            ),
                            SizedBox(width: 3),
                            Text(
                              "İhtiyacın olabilir",
                              style: TextStyle(
                                color:
                                    buttonIndex == 3
                                        ? Colors.white
                                        : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Gridview builder tanımlanacak
              GridView.builder(
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // 👈 GridView iç kaydırma olmasın
                itemCount: cards.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 5,
                ),
                itemBuilder: (context, index) {
                  return HomePageCard(
                    card: cards[index],
                    isVisible: (index + 1) % 2 == 0 ? true : false,
                    visibility: (index + 1) % 3 == 0 ? true : false,
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

class TopCardWidget extends StatelessWidget {
  final String imgUrl;
  const TopCardWidget({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: Card(child: Image.network(imgUrl)),
    );
  }
}
