import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/pages/kuis/k1_npwp/level1_npwp/kuis_level01_01_page.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KuisMenuPage extends StatefulWidget {
  const KuisMenuPage({super.key});

  @override
  State<KuisMenuPage> createState() => _KuisMenuPageState();
}

class _KuisMenuPageState extends State<KuisMenuPage> {
  int _bintangNpwpLevel1 = 0;
  int _bintangNpwpLevel2 = 0;
  int _bintangNpwpLevel3 = 0;
  int _bintangNpwpLevel4 = 0;
  int _bintangNpwpLevel5 = 0;
  int _bintangNpwpLevel6 = 0;

  @override
  void initState() {
    super.initState();
    _loadBintang();
  }

  void _loadBintang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _bintangNpwpLevel1 = prefs.getInt('bintangNpwpLevel1') ?? 0;
      _bintangNpwpLevel2 = prefs.getInt('bintangNpwpLevel2') ?? 0;
      _bintangNpwpLevel3 = prefs.getInt('bintangNpwpLevel3') ?? 0;
      _bintangNpwpLevel4 = prefs.getInt('bintangNpwpLevel4') ?? 0;
      _bintangNpwpLevel5 = prefs.getInt('bintangNpwpLevel5') ?? 0;
      _bintangNpwpLevel6 = prefs.getInt('bintangNpwpLevel6') ?? 0;
      // _bintangNpwpLevel1 = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor:
          Colors.transparent, // Ubah warna status bar menjadi transparan
      statusBarIconBrightness:
          Brightness.light, // Ubah warna teks status bar menjadi putih
    ));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          title: Text(
            '',
            style: Tulisan.H1(), // Menggunakan primaryTextStyle dari katalog
          ),
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset(
              'assets/images/svg/img_back.svg', // Path ke file SVG di dalam proyek Anda
              // width: 180,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: SvgPicture.asset(
                'assets/images/svg/img_menu_home.svg', // Path ke file SVG di dalam proyek Anda
                // width: 180,
              ),
              onPressed: () {
                Navigator.pop(context);
                // Navigator.pop(context);

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => FrontMenuPage()),
                // );
              },
            )
          ],
          backgroundColor:
              Warna.transparent, // Mengatur warna app bar menjadi transparan
          elevation: 0),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/img_bg_home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            // Image.asset("assets/images/img_bg_home.png"),
            Positioned(
              // top: 48,
              // right: 12,
              child: SvgPicture.asset(
                'assets/images/svg/img_meteor_1.svg', // Path ke file SVG di dalam proyek Anda
                width: 180,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          'assets/images/svg/img_tombol_kuis.svg', // Path ke file SVG di dalam proyek Anda
                          // width: 180,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            // Navigator.pop(
                            //     context); // Navigate back to the previous screen
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      KuisPageNpwpLevel1Nomor1()),
                            );
                          },
                          child: Image.asset(
                            'assets/images/img_kuis_level_1.png', // Path ke file SVG di dalam proyek Anda
                            width: 120,
                            // fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(width: 32),
                        Image.asset(
                          _bintangNpwpLevel1 > 0
                              ? 'assets/images/img_kuis_level_2.png'
                              : 'assets/images/img_kuis_level_2_locked.png',
                          width: 120,
                          // fit: BoxFit.fitWidth,
                        ),
                        Text(
                          '$_bintangNpwpLevel1',
                          style: Tulisan.H1(color: Warna.white),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          _bintangNpwpLevel2 > 0
                              ? 'assets/images/img_kuis_level_3.png'
                              : 'assets/images/img_kuis_level_3_locked.png',
                          width: 120,
                          // fit: BoxFit.fitWidth,
                        ),
                        SizedBox(width: 32),
                        Image.asset(
                          _bintangNpwpLevel3 > 0
                              ? 'assets/images/img_kuis_level_4.png'
                              : 'assets/images/img_kuis_level_4_locked.png',
                          width: 120,
                          // fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          _bintangNpwpLevel4 > 0
                              ? 'assets/images/img_kuis_level_5.png'
                              : 'assets/images/img_kuis_level_5_locked.png',
                          width: 120,
                          // fit: BoxFit.fitWidth,
                        ),
                        SizedBox(width: 32),
                        Image.asset(
                          _bintangNpwpLevel5 > 0
                              ? 'assets/images/img_kuis_level_6.png'
                              : 'assets/images/img_kuis_level_6_locked.png',
                          width: 120,
                          // fit: BoxFit.fitWidth,
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Stack(
                          children: [
                            SizedBox(
                              // height: 120,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  right: 20,
                                  bottom: 40,
                                ),
                                // right: -20,
                                // bottom: 20,
                                child: Container(
                                  padding: EdgeInsets.all(16),
                                  // height: 80,
                                  decoration: BoxDecoration(
                                      color: Warna.dark_purple,
                                      borderRadius: BorderRadius.circular(16)),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Pastikan kamu sudah mempelajari",
                                            textAlign: TextAlign.left,
                                            style: Tulisan.chat(),
                                          ),
                                          Text(
                                            "materinya ya...",
                                            textAlign: TextAlign.left,
                                            style: Tulisan.chat(),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // padding: EdgeInsets.only(
                              // right: 20,
                              // ),
                              right: 0,
                              top: 48,
                              child: SvgPicture.asset(
                                'assets/images/svg/img_astronot.svg',
                                width: 80,
                                // height: 40,
                                // fit: BoxFit.fitWidth,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    ;
  }
}
