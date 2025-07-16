import 'package:e_trade_application/models/cards_information.dart';
import 'package:e_trade_application/views/homepage/home_page_card.dart';
import 'package:flutter/material.dart';

class DetailsPageBottomProducts extends StatelessWidget {
  const DetailsPageBottomProducts({super.key});

  @override
  Widget build(BuildContext context) {
    
    CardsInformation sc1 = CardsInformation(
      name:
          "Relax ",
      price: 8499,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000760508266.jpg/format:webp",
          description: "Uzaktan Kumandalı Katlanabilir Portatif Yürüme ve Koşu Bandı 12 Km Hız"
    );
    CardsInformation sc2 = CardsInformation(
      name: "Apple ",
      price: 63849,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000767686501.jpg/format:webp",
          description: "iPhone 16 256GB Pembe"
    );
    CardsInformation sc3 = CardsInformation(
      name: "Apple ",
      price: 48249,
      imageUrl:
          "https://productimages.hepsiburada.net/s/376/424-600/110000393677709.jpg/format:webp",
          description: "iPhone 14 128 GB Kırmızı"
    );
    CardsInformation sc4 = CardsInformation(
      name:
          "Mectime ",
      price: 739.20,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000834113438.jpg/format:webp",
          description: "El Kranklı Elma Soyucu Paslanmaz Meyve Soyucu Elma Meyve Makinesi Soyulmuş Kit Yaratıcı Mutfak Aleti (Yurt Dışından)"
    );
    CardsInformation sc5 = CardsInformation(
      name: "Daewoo ",
      price: 20249.10,
      imageUrl:
          "https://productimages.hepsiburada.net/s/213/424-600/110000191020694.jpg/format:webp",
          description: "D-Tr AC A++ 12000 BTU/h R32 Inverter Duvar Tipi Klima"
    );
    CardsInformation sc6 = CardsInformation(
      name:
          "Samsung",
      price: 25400,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000770487279.jpg/format:webp",
          description: "Galaxy S24 Fe 512 GB 8 GB Ram (Samsung Türkiye Garantili) Grafit",
          isPhone: true
    );
    CardsInformation sc7 = CardsInformation(
      name:
          "Madame ",
      price: 180,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110000868372494.jpg/format:webp", description: "Coco Magou Ahşap Kapaklı 2'li Lunch Box - Mint Yeşili - 2x500 ml",
    );
    CardsInformation sc8 = CardsInformation(
      name: "HONOR",
      price: 18999,
      imageUrl:
          "https://productimages.hepsiburada.net/s/777/424-600/110001036648010.jpg/format:webp",
          description: " 400 5G 512 GB 8 GB Ram (Honor Türkiye Garantili) Ay Grisi",
          isPhone: true
    );

    List<CardsInformation> secondCards = [
      sc1,
      sc2,
      sc3,
      sc4,
      sc5,
      sc6,
      sc7,
      sc8,
    ];
    return SliverGrid.builder(
      itemCount: secondCards.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 5,
      ),
      itemBuilder: (context, index) {
        return HomePageCard(
          card: secondCards[index],
          isVisible: index % 4 == 0 ? true : false,
          visibility: index% 3 ==0 ? true: false,
          isPhone: secondCards[index].isPhone,
        );
      },
    );
  }
}
