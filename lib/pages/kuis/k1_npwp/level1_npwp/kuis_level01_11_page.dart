import 'package:belajar_sistem_pajak/pages/kuis/k1_npwp/level1_npwp/kuis_level01_02_page.dart';
import 'package:belajar_sistem_pajak/pages/kuis/k1_npwp/level1_npwp/kuis_level01_03_page.dart';
import 'package:belajar_sistem_pajak/pages/kuis/kuis_menu_page.dart';
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

class KuisPageNpwpLevel1Nomor11 extends StatefulWidget {
  const KuisPageNpwpLevel1Nomor11({super.key});

  @override
  State<KuisPageNpwpLevel1Nomor11> createState() =>
      _KuisPageNpwpLevel1Nomor11State();
}

class _KuisPageNpwpLevel1Nomor11State extends State<KuisPageNpwpLevel1Nomor11> {
  int _scoreNpwpLevel1 = 0;
  bool _answered = false;
  int _bintangNpwpLevel1 = 0;

  @override
  void initState() {
    super.initState();
    _loadScore();
    _loadBintang();
  }

  void _loadScore() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _scoreNpwpLevel1 = prefs.getInt('scoreNpwpLevel1') ?? 0;
    });
  }

  void _loadBintang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _bintangNpwpLevel1 = prefs.getInt('bintangNpwpLevel1') ?? 0;
    });
  }

  void _saveBintang(int newBintang) async {
    /////////==========Bintang========================
    if (_scoreNpwpLevel1 > 7) {
      _bintangNpwpLevel1 = 3;
    } else if (_scoreNpwpLevel1 < 4) {
      if (_scoreNpwpLevel1 < 1) {
        _bintangNpwpLevel1 = 0;
      } else {
        _bintangNpwpLevel1 = 1;
      }
    } else if (_scoreNpwpLevel1 >= 4 && _bintangNpwpLevel1 <= 7) {
      _bintangNpwpLevel1 = 2;
    } else {
      _bintangNpwpLevel1 = 404;
    }

    // _scoreNpwpLevel1 = 0;
    // _bintangNpwpLevel1 = 0;
    /////////==========Bintang========================
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('bintangNpwpLevel1', newBintang);
  }

  void _saveScore(int newScore) async {
    // Perhitungan bintang
    if (_scoreNpwpLevel1 > 7) {
      _bintangNpwpLevel1 = 3;
    } else if (_scoreNpwpLevel1 >= 4 && _scoreNpwpLevel1 <= 7) {
      _bintangNpwpLevel1 = 2;
    } else if (_scoreNpwpLevel1 < 4 && _scoreNpwpLevel1 >= 1) {
      _bintangNpwpLevel1 = 1;
    } else {
      _bintangNpwpLevel1 = 0;
    }

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt('scoreNpwpLevel1', newScore);
  }

//Kunci

  void _answerQuestion(bool isCorrect) async {
    if (!_answered) {
      setState(() async {
        if (isCorrect) {
          _scoreNpwpLevel1++;

          _saveBintang(_bintangNpwpLevel1);
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(builder: (context) => KuisMenuPage()),
          // );

          //     Navigator.pop(context);
          showCustomSnackbar(context, 'Benar', Colors.green);
        } else {
          _saveBintang(_bintangNpwpLevel1);
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(builder: (context) => KuisMenuPage()),
          // );

          //    Navigator.pop(context); // Navigate back to the previous screen
          // showCustomSnackbar(context, 'Salah', Colors.red);
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
      isDismissible: false,
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
              Text('"C. Tetap berlaku dan tidak diperlukan penggantian"',
                  style: Tulisan.commic()),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context); // Tutup modal bottom sheet
                      // Aksi yang ingin dilakukan ketika tombol "Lanjut" ditekan
                      showCalculateSnackbar(
                          context, 'Rangkuman Kuis', Warna.purple);
                    },
                    child: Text(
                      'OK',
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

  void showCalculateSnackbar(
      BuildContext context, String message, Color color) {
    showModalBottomSheet(
      context: context,
      isDismissible: false, // Tidak dapat ditutup dengan mengklik di luar modal

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
                    child: Text(message, style: Tulisan.H3()),
                  ),
                ],
              ),
              Divider(
                color: Warna.white,
                thickness: 1.0, // Ketebalan garis, bisa disesuaikan
              ),
              SizedBox(height: 12),
              Text("", style: Tulisan.description()),
              Text('"Jumlah benar: $_scoreNpwpLevel1"',
                  style: Tulisan.commic()),
              Text('"Jumlah salah: ${11 - _scoreNpwpLevel1}"',
                  style: Tulisan.commic()),
              Text('"Skor bintang $_bintangNpwpLevel1"',
                  style: Tulisan.commic()),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          _bintangNpwpLevel1 == 0
                              ? 'assets/images/svg/img_bintang0.svg'
                              : _bintangNpwpLevel1 == 1
                                  ? 'assets/images/svg/img_bintang1.svg'
                                  : _bintangNpwpLevel1 == 2
                                      ? 'assets/images/svg/img_bintang2.svg'
                                      : _bintangNpwpLevel1 == 3
                                          ? 'assets/images/svg/img_bintang3.svg'
                                          : 'Error 404',
                          // width: 180,
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => KuisMenuPage()),
                      );
                    },
                    child: Text(
                      'Selesai',
                      style: Tulisan.H1(color: Warna.purple),
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
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);

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
                                Text(
                                  'benar $_scoreNpwpLevel1 --- bintang $_bintangNpwpLevel1',
                                  style: Tulisan.H1(color: Warna.white),
                                ),
                                MarkSubtitleSmall(
                                  onPressed: () {
                                    //                Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(builder: (context) => ()),
                                    // );
                                  },
                                  nomor_soal: "Soal nomor 11",
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
                                                      "Pada saat PMK No. 136/PMK.03/2023 mulai berlaku, ketentuan mengenai pencantuman NPWP 15 digit dan terbit sebelum tanggal 1 Juli 2024, ....",
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
                                    text_jawaban:
                                        'Tidak berlaku dan perlu dilakukan pembetulan',
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
                                        'assets/images/img_planet_kuning.png',

                                    abjad: 'B',
                                    text_jawaban:
                                        'Tetap berlaku dan tidak diperlukan pembetulan ataupun penggantian',

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
                                    _answerQuestion(true);
                                  },
                                  child: ButtonJawabanAbc(
                                    imagePath:
                                        'assets/images/img_planet_orange.png',
                                    abjad: 'C',
                                    text_jawaban:
                                        'etap berlaku dan tidak diperlukan penggantian',
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
                                    text_jawaban:
                                        'Tidak berlaku dan perlu dilakukan pembetulan ataupun penggantian',
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
