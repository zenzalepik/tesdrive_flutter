import 'package:belajar_sistem_pajak/pages/kuis/k1_npwp/level1_npwp/kuis_level01_02_page.dart';
import 'package:belajar_sistem_pajak/pages/kuis/k1_npwp/level1_npwp/kuis_level01_03_page.dart';
import 'package:belajar_sistem_pajak/pages/kuis/k1_npwp/level1_npwp/kuis_level01_09_page.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:belajar_sistem_pajak/widgets/mark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class KuisPageNpwpLevel1Nomor8 extends StatefulWidget {
  const KuisPageNpwpLevel1Nomor8({super.key});

  @override
  State<KuisPageNpwpLevel1Nomor8> createState() =>
      _KuisPageNpwpLevel1Nomor8State();
}

class _KuisPageNpwpLevel1Nomor8State extends State<KuisPageNpwpLevel1Nomor8> {
  int _scoreNpwpLevel1 = 0;
  bool _answered = false;
  @override
  void initState() {
    super.initState();
    _loadScore();
  }

  void _loadScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _scoreNpwpLevel1 = prefs.getInt('scoreNpwpLevel1') ?? 0;
    });
  }

  void _saveScore(int newScore) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('scoreNpwpLevel1', newScore);
  }

//Kunci
  void _answerQuestion(bool isCorrect) {
    if (!_answered) {
      setState(() {
        if (isCorrect) {
          _scoreNpwpLevel1++;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => KuisPageNpwpLevel1Nomor9()),
          );
          showCustomSnackbar(context, 'Benar', Colors.green);
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => KuisPageNpwpLevel1Nomor9()),
          );
          showCustomSnackbar(context, 'Salah', Colors.red);
        }
        _answered = true;
      });
      _saveScore(_scoreNpwpLevel1);
    }
  }

  void showCustomSnackbar(BuildContext context, String message, Color color) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: color,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(message, style: Tulisan.H1_5()),
                  ),
                ],
              ),
              Divider(
                color: Warna.white,
                thickness: 1.0, // Ketebalan garis, bisa disesuaikan
              ),
              SizedBox(height: 12),
              Text("Jawaban benar:", style: Tulisan.description()),
              Text('"B. Situs web pajak (DJP Online)"', style: Tulisan.commic()),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Tutup modal bottom sheet
                      // Aksi yang ingin dilakukan ketika tombol "Lanjut" ditekan
                    },
                    child: Text(
                      'Lanjut',
                      style: Tulisan.buttonJawaban(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor:
          Colors.transparent, // Ubah warna status bar menjadi transparan
      statusBarIconBrightness:
          Brightness.light, // Ubah warna teks status bar menjadi putih
    ));
    return ScaffoldMessenger(
      child: Scaffold(
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
                onPressed: () {},
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
              Positioned(
                // top: 48,
                // right: 12,
                child: SvgPicture.asset(
                  'assets/images/svg/img_meteor_1.svg', // Path ke file SVG di dalam proyek Anda
                  width: 180,
                ),
              ),
              Positioned(
                bottom: 80,
                left: 0,
                right: -80,
                child: SvgPicture.asset("assets/images/img_rocket_astronot.png",
                    width: 120),
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
                      /*
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Jelajahi',
                                  textAlign: TextAlign.center,
                                  style: Tulisan
                                      .H1(), // Menggunakan primaryTextStyle dari katalog
                                ),
                                Text(
                                  'Sekarang',
                                  textAlign: TextAlign.center,
                                  style: Tulisan
                                      .H1(), // Menggunakan primaryTextStyle dari katalog
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
             */
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                TombolEmas(
                                    onPressed: () {
                                      //                Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(builder: (context) => ()),
                                      // );
                                    },
                                    text: "Kuis Seru"),
                                SizedBox(
                                  height: 8,
                                ),
                                MarkSubtitleSmall(
                                  onPressed: () {
                                    //                Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => ()),
                                    // );
                                  },
                                  nomor_soal: "Soal nomor 8",
                                  kategori_dan_level: "NPWP Level 01",
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Expanded(
                            child: Column(
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
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  children: [
                                                    //Soal
                                                    Text(
                                                      "Penyampaian tanggapan klarifikasi perbedaan data dalam rangka validasi data profil WP, dapat dilakukan melalui saluran berikut…",
                                                      textAlign: TextAlign.left,
                                                      style: Tulisan.commic(),
                                                    ),
                                                  ],
                                                ),
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
                                      top: 68,
                                      child: Image.asset(
                                        'assets/images/img_menu_materi_spt.png',
                                        width: 40,
                                        // height: 40,
                                        // fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _answerQuestion(false);
                                  },
                                  child: ButtonJawabanAbc(
                                    imagePath:
                                        'assets/images/img_planet_bumi.png',
                                    abjad: 'A',
                                    text_jawaban: 'Nadine',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _answerQuestion(true);
                                  },
                                  child: ButtonJawabanAbc(
                                    imagePath:
                                        'assets/images/img_planet_kuning.png',

                                    abjad: 'B',
                                    text_jawaban: 'Situs web pajak (DJP Online)',

                                    // fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _answerQuestion(false);
                                  },
                                  child: ButtonJawabanAbc(
                                    imagePath:
                                        'assets/images/img_planet_orange.png',
                                    abjad: 'C',
                                    text_jawaban: 'SMS',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _answerQuestion(false);
                                  },
                                  child: ButtonJawabanAbc(
                                    imagePath:
                                        'assets/images/img_planet_biru.png',

                                    abjad: 'D',
                                    text_jawaban: 'Media Sosial',

                                    // fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 80),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                                width: 64, "assets/images/svg/img_back.svg"),
                            SvgPicture.asset(
                                width: 64, "assets/images/svg/img_home.svg"),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          Image.asset(
                            'assets/images/img_cloud.png',
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 8,
                            right: 0,
                            left: 0,
                            child: Center(
                              child: Column(
                                children: [
                                  //   Padding(
                                  //     padding: const EdgeInsets.symmetric(horizontal: 64),
                                  //     child: Row(
                                  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  //       children: [
                                  //         SvgPicture.asset(
                                  //             width: 64,
                                  //             "assets/images/svg/img_back.svg"),
                                  //         SvgPicture.asset(
                                  //             width: 64,
                                  //             "assets/images/svg/img_home.svg"),
                                  //       ],
                                  //     ),
                                  //   ),
                                  //
                                  SizedBox(height: 8),
                                  Text(
                                    textAlign: TextAlign.center,
                                    'hafis.muaddab.2304319@students.um.ac.id',
                                    style: Tulisan.small(
                                      color: Warna.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
      ),
    );
    ;
  }
}
