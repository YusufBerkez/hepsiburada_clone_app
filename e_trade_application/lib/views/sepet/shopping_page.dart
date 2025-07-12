import 'package:flutter/material.dart';

class ShoppingPage extends StatefulWidget {
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

class _ShoppingPageState extends State<ShoppingPage> {
  @override
  Widget build(BuildContext context) {
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

      body: Center(
        child: Column(
          children: [
            
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
                        style: TextStyle(color: Colors.orange),
                      ),
                      Icon(Icons.add, color: Colors.orange),
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
