import 'package:e_trade_application/views/bottomnavbar.dart';
import 'package:e_trade_application/views/homepage/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool obscureText = true;
  var formkey = GlobalKey<FormState>();
  TextEditingController tfEposta = TextEditingController();
  TextEditingController tfSifre = TextEditingController();
  var formKeySecond = GlobalKey<FormState>();

  late TextEditingController tfUyeOl;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tfUyeOl = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tfUyeOl.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text("hepsiburada"),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: DefaultTabController(
        length: 2,

        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Hepsiburada logo başlangıç
                Container(
                  height: 100,
                  width: 200,
                  child: Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Hepsiburada_logo_official.svg/2560px-Hepsiburada_logo_official.svg.png",
                  ),
                ),

                //Hepsiburada logo bitiş

                //Kayıt işlemleri başlangıç
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    // height: 450,
                    width: 400,

                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade200, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TabBar(
                          labelColor: Colors.black,
                          indicatorColor: Colors.deepOrange,
                          indicatorSize: TabBarIndicatorSize.tab,
                          tabs: [Tab(text: "Giriş yap"), Tab(text: "Üye ol")],
                        ),
                        Container(
                          height: 400,
                          child: TabBarView(
                            children: [
                              //Giriş Yap
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: Column(
                                  children: [
                                    Form(
                                      autovalidateMode:
                                          AutovalidateMode.onUserInteraction,
                                      key: formkey,
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 40.0,
                                              vertical: 10,
                                            ),
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              controller: tfEposta,
                                              cursorColor: Colors.black,
                                              decoration: InputDecoration(
                                                label: Text("E-posta adresi"),
                                                labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                                filled: true,
                                                fillColor: Colors.grey.shade100,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.deepOrange,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors
                                                                .grey
                                                                .shade100,
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                    ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors
                                                                .grey
                                                                .shade100,
                                                      ),
                                                    ),
                                                focusColor: Colors.grey,
                                              ),

                                              validator: (tfEposta) {
                                                if (tfEposta!.isEmpty) {
                                                  return 'Lütfen e-posta adresinizi giriniz';
                                                }
                                                if (!tfEposta.contains("@")) {
                                                  return "Lütfen e postanızı doğru giriniz";
                                                }
                                                if (!tfEposta.contains(
                                                  ".com",
                                                )) {
                                                  return "Lütfen e posta adresinizi kontrol ediniz";
                                                }

                                                return null;
                                              },
                                            ),
                                          ),

                                          //E posta bitiş

                                          //Şifre Başlangıç
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 40.0,
                                              vertical: 10,
                                            ),
                                            child: TextFormField(
                                              controller: tfSifre,

                                              cursorColor: Colors.black,
                                              obscureText: obscureText,

                                              decoration: InputDecoration(
                                                suffixIcon: GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      obscureText =
                                                          !obscureText;
                                                    });
                                                  },
                                                  child: Icon(
                                                    obscureText
                                                        ? Icons
                                                            .remove_red_eye_outlined
                                                        : Icons
                                                            .visibility_off_outlined,
                                                    color: Colors.grey.shade500,
                                                  ),
                                                ),
                                                label: Text("Şifre"),
                                                labelStyle: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                                filled: true,
                                                fillColor: Colors.grey.shade100,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: Colors.deepOrange,
                                                  ),
                                                ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors
                                                                .grey
                                                                .shade100,
                                                        width: 0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            10,
                                                          ),
                                                    ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors
                                                                .grey
                                                                .shade100,
                                                      ),
                                                    ),
                                              ),

                                              validator: (tfSifre) {
                                                if (tfSifre!.isEmpty) {
                                                  return "Şifre boş bırakılamaz";
                                                }
                                                if (tfSifre.length < 6) {
                                                  return "Şifre en az 6 karakterli olmalı";
                                                }
                                                return null;
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    //E posta başlangıç

                                    //Şifre Bitiş

                                    //Şifremi unuttum başlangıç
                                    TextButton(
                                      onPressed: () {},
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 40.0,
                                          ),
                                          child: Text(
                                            "Şifremi unuttum",
                                            style: TextStyle(
                                              color: Colors.deepOrange,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //Şifremi unuttum bitiş

                                    //Giriş Yap Butonu Başlangıç
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0,
                                        vertical: 10,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          bool kontrolSonuc =
                                              formkey.currentState!.validate();
                                          if (kontrolSonuc) {
                                            String ePosta = tfEposta.text;
                                            String sifre = tfSifre.text;

                                            print(
                                              "Kullanıcı adı: $ePosta - Şifre: $sifre",
                                            );

                                            Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder:
                                                    (context) => Bottomnavbar(),
                                              ),
                                            );
                                          }
                                        },
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 100.0,
                                            vertical: 20,
                                          ),
                                          child: Text(
                                            "Giriş Yap",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.deepOrange,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              7,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    //Giriş Yap butonu bitiş

                                    //Telefon numarası ile giriş başlangıç
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 40.0,
                                        vertical: 10,
                                      ),
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.phone_outlined),
                                            Text(
                                              "Telefon numarası ile giriş yap ",
                                            ),
                                          ],
                                        ),

                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          foregroundColor: Colors.black87,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                              5,
                                            ),
                                            side: BorderSide(
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              //Üye ol
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Form(
                                    autovalidateMode:
                                        AutovalidateMode.onUserInteraction,
                                    key: formKeySecond,
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 20,
                                          ),
                                          child: TextFormField(
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            controller: tfUyeOl,
                                            decoration: InputDecoration(
                                              hintText:
                                                  "E-posta adresi veya GSM numarası",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              ),
                                              fillColor: Colors.grey.shade200,
                                              filled: true,
                                              border: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Colors.grey.shade200,
                                                ),
                                              ),
                                            ),
                                            validator: (tfUyeOl) {
                                              if (tfUyeOl!.isEmpty) {
                                                return "E posta boş bırakılamaz";
                                              }
                                              if (!tfUyeOl.contains("@")) {
                                                return "Lütfen e postanızı doğru giriniz";
                                              }
                                              if (!tfUyeOl.contains(".com")) {
                                                return "Lütfen E-postanızı kontrol ediniz";
                                              }
                                              return null;
                                            },
                                          ),
                                        ),

                                        Row(
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 20.0,
                                                    ),
                                                child: ElevatedButton(
                                                  onPressed: () {},
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          vertical: 15.0,
                                                        ),
                                                    child: Text(
                                                      "Devam Et",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        Colors.deepOrange,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            5,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 40,
                                          ),
                                          child: RichText(
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: "Kişisel verileriniz, ",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "Aydınlatma Metni ",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "kapsamında işlenmektedir. “Devam et” veya “Sosyal Hesap” butonlarından birine basarak ",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      "Üyelik Sözleşmesi’ni ve Gizlilik Politikası’nı",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      " okuduğunuzu ve kabul ettiğinizi onaylıyorsunuz.",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
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

                        //Telefon numarası ile giriş bitiş
                      ],
                    ),
                  ),
                ),

                //Kayıt işlemleri bitiş

                //Sosyal medya hesapları başlangıç
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: Container(
                    width: 400,
                    height: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 228, 236, 228),
                    ),

                    child: Column(
                      children: [
                        //Sosyal hesabın ile giriş yap yazısı başlangıç
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                "Sosyal hesabın ile giriş yap",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),

                        //Sosyal hesabın ile giriş yap yazısı bitiş
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Apple Icon başlangıç
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Icon(Icons.apple),
                              ),
                            ),
                            //Apple Icon bitiş

                            //Google Icon Başlangıç
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Align(
                                  child: FaIcon(
                                    FontAwesomeIcons.google,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                            ),
                            //Google Icon bitiş

                            //Facebook Icon başlangıç
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5.0,
                              ),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Align(
                                  child: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                            //FAcebook Icon bitiş
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                //Sosyal medya hesapları bitiş
              ],
            ),
          ),
        ),
      ),
    );
  }
}
