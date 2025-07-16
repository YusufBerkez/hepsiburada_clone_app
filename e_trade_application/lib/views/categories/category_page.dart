import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade200,
        title: SizedBox(
          child: TextField(
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey.shade200),
              ),
              prefixIcon: Icon(Icons.search),
              hintText: "Ürün, kategori veya marka ara",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
              suffixIcon: Icon(Icons.camera_alt_outlined),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 150,
            width: double.infinity,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                customContainer(
                  kategoriId: 0,
                  imageUrl:
                      "https://www.pngarts.com/files/3/Clothing-PNG-Download-Image.png",
                  categoryText: "Giyim\nAyakkabı",
                ),
                customContainer(
                  kategoriId: 1,
                  imageUrl:
                      "https://img.freepik.com/premium-photo/laptop-isolated-white-background_180633-457.jpg?semt=ais_hybrid&w=740",
                  categoryText: "Telefon,\nTablet",
                ),
                customContainer(
                  kategoriId: 2,
                  imageUrl:
                      "https://www.avokadokonsept.com/palace-krem-ahsap-sandalye-5421-53-B.png",
                  categoryText: "Ev Yaşam",
                ),
                customContainer(
                  kategoriId: 3,
                  imageUrl:
                      "https://www.pullu.com.tr/tema/genel/uploads/urunler/image_2.png",
                  categoryText: "Beyaz Eşya",
                ),
                customContainer(
                  kategoriId: 4,
                  imageUrl:
                      "https://w7.pngwing.com/pngs/487/436/png-transparent-cosmetic-cosmetics-product-kind-lip-gloss-cosmetic-thumbnail.png",
                  categoryText: "Kozmetik,\nSağlık,\nGüzellik",
                ),

                customContainer(
                  kategoriId: 5,
                  imageUrl:
                      "https://static.ticimax.cloud/69166/uploads/urunresimleri/buyuk/tiglon-axel-haki-erkek-spor-ayakkabi-5-95a4.png",
                  categoryText: "Spor,\nOutdoor",
                ),
              ],
            ),
          ),

          //Giyim ayakkabı yazısı
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Text(
                  "Giyim, Ayakkabı",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 480,
              child: GridView.extent(
                maxCrossAxisExtent: 135,
                mainAxisSpacing: 20,
                childAspectRatio: 3 / 4.2,

                children: [
                  BottomContainers(
                    imgUrl:
                        "https://cdn-icons-png.freepik.com/512/4990/4990176.png",
                    category: "Tümü",
                  ),
                  BottomContainers(
                    imgUrl:
                        "https://static.vecteezy.com/system/resources/previews/048/346/342/non_2x/women-shopping-for-clothes-enjoying-a-day-out-together-png.png",
                    category: "Kadın",
                  ),
                  BottomContainers(
                    imgUrl:
                        "https://img.freepik.com/premium-photo/summer-collection-men-clothes-set-with-checkered-shirt-jeans-shoes-belt-isolated-white-background_142957-1103.jpg?semt=ais_hybrid&w=740",
                    category: "Erkek",
                  ),
                  BottomContainers(
                    imgUrl:
                        "https://i.pinimg.com/564x/f1/34/88/f13488a16a663e67856040020e07a1fb.jpg",
                    category: "Kadın Aksesuar ve Takı",
                  ),
                  BottomContainers(
                    imgUrl:
                        "https://pngimg.com/uploads/watches/watches_PNG9860.png",
                    category: "Erkek Aksesuar ve Takı",
                  ),
                  BottomContainers(
                    imgUrl: "https://pngimg.com/d/baby_PNG51744.png",
                    category: "Çocuk ve Bebek",
                  ),
                  BottomContainers(
                    imgUrl:
                        "https://img.freepik.com/free-vector/fashion-accessory-composition-with-isolated-image-luxury-female-goods-blank-background-vector-illustration_1284-65973.jpg",
                    category: "Ayakkabı ve Çanta",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector customContainer({
    required int kategoriId,
    required String imageUrl,
    required String categoryText,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentIndex = kategoriId;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
            child: Container(
              height: 60,
              width: 60,

              decoration: BoxDecoration(
                border: Border.all(
                  color:
                      currentIndex == kategoriId
                          ? Colors.orange
                          : Colors.grey.shade200,
                  width: 3,
                ),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.contain,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          SizedBox(height: 4),
          Text(
            categoryText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: currentIndex == kategoriId ? Colors.orange : Colors.black,
            ),
          ),
          Spacer(),
          currentIndex == kategoriId
              ? Container(height: 3, width: 60, color: Colors.deepOrange)
              : Container(),
        ],
      ),
    );
  }
}

class BottomContainers extends StatelessWidget {
  final String imgUrl;
  final String category;
  const BottomContainers({
    super.key,
    required this.imgUrl,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                width: 100,

                alignment: Alignment.center,
                child: Image.network(imgUrl, height: 70),
              ),
            ),
          ),
          Text(
            category,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 11,
              color: Colors.grey.shade600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final int index;
  final String imgUrl;
  final String categoryText;
  const CustomContainer({
    super.key,
    required this.currentIndex,
    required this.index,
    required this.imgUrl,
    required this.categoryText,
  });

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
          child: Container(
            height: 60,
            width: 60,

            decoration: BoxDecoration(
              border: Border.all(
                color:
                    currentIndex == index
                        ? Colors.orange
                        : Colors.grey.shade200,
                width: 3,
              ),
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(imgUrl),
                fit: BoxFit.contain,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        SizedBox(height: 4),
        Text(
          categoryText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: currentIndex == index ? Colors.orange : Colors.black,
          ),
        ),
        Spacer(),
        currentIndex == index
            ? Container(height: 3, width: 60, color: Colors.deepOrange)
            : Container(),
      ],
    );
  }
}
