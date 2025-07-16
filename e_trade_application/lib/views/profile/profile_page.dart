import 'package:e_trade_application/views/login_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          //Hesabım circle avatar ve isim kısmı
          SliverAppBar(
            expandedHeight: height * 0.2,
            floating: true,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              //Flexible space içinde direkt column row container vs koyduğuumuzda sıkıntı oluşuyor onun yerine flexibleSpaceBar içine koymamız gerekiyormuş. appbar küçüldüğünde oranı kendisi koruyor responsive olmasını sağlıyor.
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.deepOrange],
                  ),
                ),
                child: SafeArea(
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10,
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.notifications_none,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Hesabım",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: height * 0.02,
                              ),
                            ),
                            CircleAvatar(
                              child: Text("YZ"),
                              radius: height * 0.03,
                              backgroundColor: Colors.white,
                            ),
                            Text(
                              "Yusuf Berke Zengin",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: height * 0.025,
                                color: Colors.white,
                                overflow: TextOverflow.fade,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.inventory_2_outlined),
                title: Text("Siparişlerim"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.diamond_outlined),
                title: Text("Sana Özel Fırsatlar"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.wallet_giftcard),
                title: Text("Kuponlarım"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.gamepad_outlined),
                title: Text("Oynadıkça Kazan"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.credit_card),
                title: Text("Premium WorldCard"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.paypal_outlined),
                title: Text("Hepsipay"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.favorite_border),
                title: Text("Beğendiklerim"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.payments_outlined),
                title: Text("Link Gelir"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                minTileHeight: height * 0.05,
                leading: Icon(Icons.request_quote_outlined),
                title: Text("Soru Ve Taleplerim"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                leading: Icon(Icons.rate_review_outlined),
                title: Text("Değerlendirmelerim"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Ayarlarım"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.network(
                    "https://www.olkando.com/wp-content/uploads/2024/02/yuvarlak-turk-bayragi-tc-bayrak.png",
                  ),
                  radius: 14,
                ),
                title: Text("Dİl Seçimi (Beta)"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                leading: Icon(Icons.location_on_outlined),
                title: Text("Adreslerim"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                leading: Icon(Icons.feedback_outlined),
                title: Text("Uygulama geri bildirimi"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              Divider(
                color: Colors.grey.shade300,
                endIndent: MediaQuery.of(context).size.width * 0.04,
                indent: MediaQuery.of(context).size.width * 0.04,
              ),
              ListTile(
                leading: Icon(Icons.support_agent),
                title: Text("Müşteri Hizmetleri"),
                trailing: Icon(Icons.keyboard_arrow_right_outlined),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: BorderSide(color: Colors.grey.shade400),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Stack(
                    children: [
                      Icon(Icons.logout, color: Colors.black),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Çıkış Yap",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
