import 'package:e_trade_application/views/detailspage/details_page_bottom_products.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String name;
  final String description;
  final String imgUrl;
  final int price;
  final bool visibility;

  const DetailsPage({
    required this.name,
    required this.imgUrl,
    required this.description,
    required this.price,
    required this.visibility,
  });

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int secilenIndex = 0;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          //Üst kısmı
          SliverAppBar(
            // pinned: true,
            expandedHeight: height * 0.7,
            backgroundColor: Colors.white,

            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: height * 0.5,
                      child: Image.network(widget.imgUrl, fit: BoxFit.cover),
                    ),
                  ),

                  // En avantajlı kısmı ilerde bool değişken döndüreceğiz bunun için.
                  Visibility(
                    visible: widget.visibility,
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.2,
                            height: height * 0.08,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepOrange, // İç renk
                              border: Border.all(width: 3),
                            ),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "En",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.02,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Avantajlı",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: height * 0.019,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Alt kısmı
          SliverToBoxAdapter(
            child: Center(
              child: Column(
                children: [
                  //Ürün adı ve değerlendirme vs.
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 9,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${widget.name} ",
                                  style: TextStyle(color: Colors.deepOrange),
                                ),

                                TextSpan(
                                  text: widget.description,
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            softWrap: true,
                            overflow: TextOverflow.visible,
                          ),
                        ),

                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                //Değerlendirme
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(9),
                                      topRight: Radius.circular(9),
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Colors.deepOrange,
                                        size: 20,
                                      ),
                                      Text("4.7"),
                                    ],
                                  ),
                                ),
                                //yazı
                                Container(
                                  alignment: Alignment.center,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade300,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(9),
                                      bottomRight: Radius.circular(9),
                                    ),
                                  ),
                                  child: Text("272"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Ürün taksit imkanı vs varsa
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 8,
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.purple,
                      ),
                      tileColor: const Color.fromARGB(255, 240, 232, 245),

                      leading: Icon(Icons.timer),
                      title: Row(
                        children: [
                          Text(
                            "Kartsız 12 x ",
                            style: TextStyle(
                              color: Colors.purple,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 0.15,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.purple,
                            ),
                            child: Text(
                              "${(widget.price / 12 + 100).toInt()} TL",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),

                  //Kapasite telefonlar için
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Kapasite: ",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "512 GB",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Kapasite Kutucuğu
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: height * 0.05,
                          width: 60,
                          child: Text(
                            "512 GB",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.orange),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Renk
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Renk: ",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "Siyah",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),

                  //Fiyat kutucukları
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              secilenIndex = 0;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                              children: [
                                Text(
                                  "Mavi",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("${widget.price} TL"),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    secilenIndex == 0
                                        ? Colors.orange
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              secilenIndex = 1;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                              children: [
                                Text(
                                  "Mor",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("${widget.price} TL"),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    secilenIndex == 1
                                        ? Colors.orange
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              secilenIndex = 2;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: height * 0.06,
                            width: MediaQuery.of(context).size.width * 0.25,
                            child: Column(
                              children: [
                                Text(
                                  "Siyah",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text("${widget.price} TL"),
                              ],
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color:
                                    secilenIndex == 2
                                        ? Colors.orange
                                        : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(thickness: 3, color: Colors.grey.shade200),

                  //Hepsiburada yazı mavi tik satıcıya sor ve sepete ekle
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Hepsiburada",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 6),
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.done,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                        Spacer(),

                        //Satıcıya Sor
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                              vertical: 3,
                            ),
                            child: Text(
                              "Satıcıya Sor",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.deepOrange,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        SizedBox(width: 5),
                        //Sepete Ekle
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 5.0,
                              vertical: 3,
                            ),
                            child: Text(
                              "Sepete Ekle",
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            border: Border.all(
                              color: Colors.deepOrange,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Hepsijet premium ücresiz ve bugün kapında yazısı
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 17,
                          child: Image.network(
                            "https://images.hepsiburada.net/shipping/assets/StandardDelivery.png",
                          ),
                        ),

                        SizedBox(width: 3),
                        Text("Bugün Kapında", style: TextStyle(fontSize: 12)),

                        SizedBox(width: 3),
                        //Premiuma ücretsiz kutucuğu
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xfffdd7e4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8.0,
                            ),
                            child: Text(
                              "Premium'a ücretsiz",
                              style: TextStyle(
                                color: Color(0xffe6007e),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),

                        Spacer(),
                        SizedBox(
                          height: 15,
                          child: Image.network(
                            "https://images.hepsiburada.net/assets/cargo-logo/21.png",
                          ),
                        ),
                      ],
                    ),
                  ),

                  Divider(
                    thickness: 3,
                    color: Colors.grey.shade200,
                    height: 20,
                  ),

                  //Diğer satıcılar 21 yazıları
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Diğer Satıcılar"),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            debugPrint("Tümüne tıklandı");
                          },
                          child: Text(
                            "Tümü (21)",
                            style: TextStyle(
                              color: Colors.deepOrange,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        Icon(
                          Icons.keyboard_arrow_right_outlined,
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                  ),

                  //Fiyat Aralığı
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Fiyat Aralığı: "),

                        Text(
                          "${widget.price + 200} TL ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text("-"),
                        Text(
                          " ${(widget.price + 200) * 2 - 383} TL ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),

                  //Listview cardlar
                  SizedBox(
                    height: height * 0.25,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [
                        CustomCard(
                          name: 'BERKE TEKNOLOJİ',
                          price: '${widget.price + 300}',
                        ),
                        CustomCard(
                          name: 'ZENGİN TECH',
                          price: '${widget.price + 601}',
                        ),
                      ],
                    ),
                  ),

                  Divider(thickness: 3, color: Colors.grey.shade200),
                  //Ürün değerlendirmesi ve tümü yazısı (GestureDetector koyabiliriz)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "Ürün Değerlendirmeleri",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Tümü",
                          style: TextStyle(
                            color: Colors.deepOrange,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.deepOrange,
                        ),
                      ],
                    ),
                  ),

                  //Değerlendirme yzısı ve değerlendirme ikonu
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        //4.6 yazısı ve yıldız ikonu
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade200),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.star, color: Colors.deepOrange),
                                Text(
                                  "4.6",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Değerlendirme sayısı ve yazısı
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "331",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: " Değerlendirme",
                                style: TextStyle(color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Değerlendirme Özeti ve yorum yazıları
                  SizedBox(
                    height: 220,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        RateSum(height: height, name: widget.name),
                        CommentWidget(),
                      ],
                    ), 
                  ),
                ],
              ),
            ),
          ),
          DetailsPageBottomProducts(),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.price.toString(),
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Text(
                "TL",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 1),
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 50,
                width: 75,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 17,
                          child: Image.network(
                            "https://cdn.prod.website-files.com/653aeec087292b830db7180e/65a97b1fbf8bfe24442c9fc5_HEPSI%CC%87PAY.png",
                          ),
                        ),
                        Text(
                          "ile",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Hızlı al",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.deepOrange,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.add_shopping_cart, color: Colors.white),
                        SizedBox(width: 4),
                        Text(
                          "Sepete Ekle",
                          style: TextStyle(color: Colors.white),
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
    );
  }
}

class CommentWidget extends StatelessWidget {
  const CommentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.shade200,
      ),
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.8,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person_outline_rounded,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      child: Icon(Icons.verified, size: 13, color: Colors.blue),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "ENES E***",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "Hepsiburada",
                                  style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                TextSpan(
                                  text: " satıcısından onaylı",
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
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
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Kargo biraz geç geldi ama sorun değil kutu darbe almış yani içinde ne olduğu önemli değil mi acaba 3 liralık birşey değil ki bu daha özenli olması gerekirdi Allah'tan içine balonlu poşet koymuşlar ürün zarar görmemiş ama Hepsiburada herzaman satın alımlarda ilk tercihim olmuştur",
            ),
          ),
        ],
      ),
    );
  }
}

class RateSum extends StatelessWidget {
  final String name;
  const RateSum({super.key, required this.height, required this.name});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 222, 224, 238),
          borderRadius: BorderRadius.circular(5),
        ),
        width: MediaQuery.of(context).size.width * 0.8,
        constraints: BoxConstraints(maxHeight: height * 0.21),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Değerlendirme Özeti",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${name}, kullanıcılar tarafından yüksek puanlar almış ve genel olarak olumlu yorumlar ile öne çıkmıştır. Ürünü tercih eden kullanıcılar özellikle performansı, tasarımı ve fiyat/performans dengesini beğenmiştir. Yapılan değerlendirmelerde dayanıklılık ve kullanım kolaylığı sıkça vurgulanmıştır.",
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String name;
  final String price;
  const CustomCard({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.5,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //Berke teknoloji yazısı ve değerlendirme
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "${name}",
                    //Responsive tasarımda bu konu varmış
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 243, 147, 2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 6),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 5, 110, 8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        "9,9",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // ne zaman kapıda olacağını söylediği yer ve kamyon ikonu
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Image.network(
                      "https://images.hepsiburada.net/shipping/assets/StandardDelivery.png",
                    ),
                  ),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "5 saat 17dk ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: "içinde sipariş verirsen yarın kapında",
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text("2", style: TextStyle(color: Colors.white)),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent.shade100,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                    ),
                    child: Text(
                      "Kupon",
                      style: TextStyle(color: Colors.deepOrangeAccent),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.04,
                color: Colors.grey.shade200,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6.0,
                    horizontal: 3,
                  ),
                  child: Row(
                    children: [
                      //Fiyat kısmı
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${price}",
                              style: TextStyle(
                                fontSize: height * 0.02,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: " TL",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Spacer(),

                      Icon(Icons.add_shopping_cart, size: 17),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
