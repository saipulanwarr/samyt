import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                  text: "Saipul",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  )),
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(right: 20),
              width: 30,
              height: 30,
              child: Image.asset(
                "assets/icons/qrcode.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 180,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Column(
            children: [
              Column(
                children: [
                  ClipPath(
                    clipper: ClipInfoClass(),
                    child: Container(
                      padding: EdgeInsets.all(15),
                      margin: EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFE52D27),
                            Color(0xFFB31217),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "081290112333",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Image.asset("assets/logo/simpati.png")
                            ],
                          ),
                          SizedBox(
                            height: 21,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Rp.34.000",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: Text(
                                  "Isi Pulsa",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFFF7B731),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          RichText(
                            text: TextSpan(
                              text: "Berlaku Sampai ",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              children: [
                                TextSpan(
                                  text: "19 April 2022",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                "Telkomsel Point",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xFFF7B731),
                                ),
                                child: Text(
                                  "172",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        StatusCard(
                          title: "Internet",
                          data: "12.9",
                          satuan: "GB",
                        ),
                        StatusCard(
                          title: "Telepon",
                          data: "0",
                          satuan: "Min",
                        ),
                        StatusCard(
                          title: "SMS",
                          data: "23",
                          satuan: "Sms",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
              Container(
                height: 10,
                color: Color(0xFFF1F2F6),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Kategori Paket",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ItemKategori(
                                  title: "Internet",
                                  icon: "assets/icons/internet.png",
                                ),
                                ItemKategori(
                                  title: "Telpon",
                                  icon: "assets/icons/telepon.png",
                                ),
                                ItemKategori(
                                  title: "SMS",
                                  icon: "assets/icons/sms.png",
                                ),
                                ItemKategori(
                                  title: "Roaming",
                                  icon: "assets/icons/roaming.png",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ItemKategori(
                                  title: "Hiburan",
                                  icon: "assets/icons/hiburan.png",
                                ),
                                ItemKategori(
                                  title: "Unggulan",
                                  icon: "assets/icons/unggulan.png",
                                ),
                                ItemKategori(
                                  title: "Tersimpan",
                                  icon: "assets/icons/tersimpan.png",
                                ),
                                ItemKategori(
                                  title: "Riwayat",
                                  icon: "assets/icons/riwayatt.png",
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Terbaru dari Telkomsel",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Lihat Semua",
                                  style: TextStyle(
                                    color: Color(0xFFEC2028),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  ItemTerbaru(
                                    image: "assets/images/image-1.png",
                                  ),
                                  ItemTerbaru(
                                    image: "assets/images/image-2.png",
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 70,
                        margin: EdgeInsets.only(bottom: 10),
                        // color: Colors.amber,
                        width: Get.width,
                        decoration: BoxDecoration(
                          border: Border(
                            top: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ItemNav(
                              title: "Beranda",
                              status: true,
                              icon: "home",
                            ),
                            ItemNav(
                              title: "Riwayat",
                              status: false,
                              icon: "riwayat",
                            ),
                            ItemNav(
                              title: "Bantuan",
                              status: false,
                              icon: "bantuan",
                            ),
                            ItemNav(
                              title: "Inbox",
                              status: false,
                              icon: "inbox",
                            ),
                            ItemNav(
                              title: "Akun Saya",
                              status: false,
                              icon: "akun",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ItemTerbaru extends StatelessWidget {
  ItemTerbaru({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: Get.width * 0.7,
      height: 75,
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 35,
          height: 35,
          child: Image.asset(
            icon,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 20,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: TextStyle(
            color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
          ),
        ),
      ],
    );
  }
}

class StatusCard extends StatelessWidget {
  StatusCard({
    Key? key,
    required this.title,
    required this.data,
    required this.satuan,
  }) : super(key: key);

  final String title;
  final String data;
  final String satuan;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        width: Get.width * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Color(0xFF1E272E),
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            RichText(
              text: TextSpan(
                text: data,
                style: TextStyle(
                  color: Color(0xFFEC2028),
                  fontSize: 24,
                ),
                children: [
                  TextSpan(
                    text: " $satuan",
                    style: TextStyle(
                      color: Color(0xFF747D8C),
                      fontSize: 14,
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

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 150, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);

    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 60);

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
