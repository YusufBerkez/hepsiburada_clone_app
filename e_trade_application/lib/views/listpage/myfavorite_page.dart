import 'package:flutter/material.dart';

class MyfavoritePage extends StatefulWidget {
  const MyfavoritePage({super.key});

  @override
  State<MyfavoritePage> createState() => _MyfavoritePageState();
}

class _MyfavoritePageState extends State<MyfavoritePage> {
  @override
  Widget build(BuildContext context) {
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

      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
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
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText: "Beğendiklerinde Ara",
                            prefixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(blurRadius: 3, color: Colors.grey.shade400),
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
          ],
        ),
      ),
    );
  }
}
