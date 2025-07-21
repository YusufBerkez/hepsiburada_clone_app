import 'package:e_trade_application/data/datahelper.dart';
import 'package:e_trade_application/models/cards_information.dart';
import 'package:e_trade_application/views/detailspage/details_page.dart';
import 'package:flutter/material.dart';

class HomePageCard extends StatefulWidget {
  final bool isVisible;
  final bool visibility;
  final CardsInformation card;
  final bool isPhone;
  const HomePageCard({
    required this.card,
    required this.isVisible,
    required this.visibility,
    required this.isPhone,
  });

  @override
  State<HomePageCard> createState() => _HomePageCardState();
}

class _HomePageCardState extends State<HomePageCard> {
  bool isClick = false;
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
                  isPhone: widget.isPhone,
                ),
          ),
        );
      },
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),

          //ChatGpt kısmıydı
          // errorBuilder: (context, error, stackTrace) {
          //   return Icon(Icons.broken_image);
          // },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,

                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(5),
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.network(
                          widget.card.imageUrl,
                          fit: BoxFit.contain,
                          errorBuilder: (context, error, stackTrace) {
                            return Icon(Icons.broken_image);
                          },
                        ),
                      ),
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
                                  ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                    size: 21,
                                  )
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

              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 40,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      textAlign: TextAlign.start,
                      maxLines: 2, //max satır sayısı
                      overflow: TextOverflow.ellipsis, //taşarsa 3 nokta koyar
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: widget.card.name,

                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          TextSpan(
                            text: widget.card.description,
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
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

              GestureDetector(
                onTap: () {
                  //önce isminin bulunduğu indexi buldum
                  final index = cardss.indexWhere(
                    (item) => item.name == widget.card.name,
                  );
                  
                  //sonra burda da varsa sayısını arttırdım yoksa listeye ekledim
                  if (index != -1) {
                    cardss[index].count++;
                  } else {
                    cardss.add(widget.card);
                  }
                  setState(() {});
                },
                child: Padding(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
