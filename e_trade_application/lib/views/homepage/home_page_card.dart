import 'package:e_trade_application/models/cards_information.dart';
import 'package:e_trade_application/views/detailspage/details_page.dart';
import 'package:flutter/material.dart';

class HomePageCard extends StatefulWidget {
  final bool isVisible;
  final bool visibility;
  final CardsInformation card;
  const HomePageCard({
    required this.card,
    required this.isVisible,
    required this.visibility,
  });

  @override
  State<HomePageCard> createState() => _HomePageCardState();
}

class _HomePageCardState extends State<HomePageCard> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder:
                (context) => DetailsPage(
                  name: widget.card.name,
                  imgUrl: widget.card.imageUrl,
                  description: widget.card.description,
                  price: widget.card.price.toInt(),
                  visibility: widget.visibility,
                ),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Image.network(
                      widget.card.imageUrl,
                      fit: BoxFit.contain,
                      //ChatGpt kısmıydı
                      // errorBuilder: (context, error, stackTrace) {
                      //   return Icon(Icons.broken_image);
                      // },
                    ),

                    Visibility(
                      visible: widget.visibility,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.2,
                          height: height * 0.06,
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
                                    fontSize: height * 0.015,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 40,
                  child: Text(widget.card.name + widget.card.description),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.deepOrange, size: 16),
                  Text("4.6"),
                ],
              ),

              Opacity(
                opacity: widget.isVisible ? 1 : 0,
                child: Row(
                  children: [
                    Text(
                      "Kartsız 12x ",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "${((widget.card.price / 12) + 100).toInt()} TL",
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

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.038,
                  color: Colors.grey.shade300,
                  child: Row(
                    children: [
                      Text(
                        "${widget.card.price.toInt().toString()} TL",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
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
    );
  }
}
