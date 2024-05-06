import 'package:belajar_sistem_pajak/pages/materi/m2_spt/materi_spt_02_aturan_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_01_pengertian_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_02_aturan_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_03_tarif_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_04_jenis_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_05_contoh_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_07_catatan_page.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:belajar_sistem_pajak/widgets/mark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MateriPPh08Page extends StatefulWidget {
  const MateriPPh08Page({super.key});

  @override
  State<MateriPPh08Page> createState() => _MateriPPh08PageState();
}

class _MateriPPh08PageState extends State<MateriPPh08Page> {
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Tidak dapat membuka $url';
    }
  }

  void _showInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(0),
          content: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 32,
              ),
              constraints: BoxConstraints(
                  minWidth: 200,
                  minHeight: 100,
                  maxHeight: 320), // Ensure minimum size

              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Warna.dark_purple,
                    spreadRadius: -12.0,
                    blurRadius: 24.0,
                  ),
                  BoxShadow(
                    color: Warna.black,
                    spreadRadius: 32.0,
                    blurRadius: 24.0,
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Warna.dark_purple,
                    Warna.purple,
                    Warna.blue,
                    Color.fromARGB(255, 44, 44, 44),
                    const Color.fromARGB(255, 24, 24, 24),
                  ], // Define your gradient colors
                ),
                border: Border.all(
                  width: 2,
                  color: Warna.white,
                ),
                borderRadius: BorderRadius.circular(
                    32.0), // Optional: Add rounded corners
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text('Semoga ringkasan ini bermanfaat!',
                            style: Tulisan.H1(color: Warna.white)),
                        SizedBox(
                          height: 24,
                        ),
                        // TextField(
                        //   controller: _textEditingController,
                        //   decoration: InputDecoration(
                        //     hintText: 'Namaku adalah...',
                        //     filled: true,
                        //     fillColor: Warna.white, // Background color
                        //     border: OutlineInputBorder(
                        //       borderRadius:
                        //           BorderRadius.circular(12.0), // Border radius
                        //       borderSide: BorderSide.none, // No border side
                        //     ),
                        //   ),
                        // ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: ElevatedButton(
                            style: transparan,
                            onPressed: () {
                              // _showInputDialog(context);
                              // setState(() {
                              //   _inputText = _textEditingController.text;
                              // });
                              Navigator.of(context).pop();
                              Navigator.of(context).pop();

                              // Navigator.pushAndRemoveUntil(
                              //   context,
                              //   MaterialPageRoute(
                              //       builder: (context) => FrontMenuPage()),
                              //   ModalRoute.withName(
                              //       '/'), // Gunakan '/' untuk menghapus semua rute dan memulai dari awal
                              // );
                            },

                            // onPressed: () {
                            //   Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => FrontMenuPage()),
                            //     ModalRoute.withName(
                            //         '/'), // Gunakan '/' untuk menghapus semua rute dan memulai dari awal
                            //   );
                            // },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 8),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Warna.blue,
                                    Warna.purple
                                  ], // Warna gradien
                                ),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                  BoxShadow(
                                    color: Warna.blue
                                        .withOpacity(1), // Warna shadow
                                    spreadRadius: 20, // Penyebaran shadow
                                    blurRadius: 40, // Blur shadow
                                    offset: Offset(0, 16), // Offset shadow
                                  ),
                                ],
                              ),
                              child: Text(
                                '   OK   ',
                                style: Tulisan.H1(color: Warna.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
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
            // Image.asset("assets/images/img_bg_home.png"),
            // Positioned(
            //   bottom: 0,
            //   right: -80,
            //   left: -80,
            //   child:
            // ),

            Positioned(
              // top: 48,
              // right: 12,
              child: SvgPicture.asset(
                'assets/images/svg/img_planet_purple.svg', // Path ke file SVG di dalam proyek Anda
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
                        MarkEmas(
                            onPressed: () {
                              //                Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ()),
                              // );
                            },
                            text: "MATERI PPh")
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MarkSubtitle(
                            onPressed: () {
                              //                Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => ()),
                              // );
                            },
                            text: "08. Sumber Informasi")
                      ],
                    ),
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
                                        // right: 20,
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
                                                  Row(
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 24,
                                                        child: RichText(
                                                          textAlign:
                                                              TextAlign.left,
                                                          text: TextSpan(
                                                            style: Tulisan
                                                                .commic(),
                                                            children: <TextSpan>[
                                                              TextSpan(
                                                                  text: "*",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 0.0,
                                                                  top: 0),
                                                          child: RichText(
                                                            textAlign:
                                                                TextAlign.left,
                                                            text: TextSpan(
                                                              style: Tulisan
                                                                  .commic(),
                                                              children: <TextSpan>[
                                                                TextSpan(
                                                                  text:
                                                                      "id.wikipedia.org/wiki/Penghasilan_kena_pajak",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Warna
                                                                        .yellow,
                                                                  ),
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () {
                                                                          _launchURL(
                                                                              "id.wikipedia.org/wiki/Penghasilan_kena_pajak");
                                                                        },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    // mainAxisAlignment:
                                                    //     MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 24,
                                                        child: RichText(
                                                          textAlign:
                                                              TextAlign.left,
                                                          text: TextSpan(
                                                            style: Tulisan
                                                                .commic(),
                                                            children: <TextSpan>[
                                                              TextSpan(
                                                                  text: "*",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold)),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 0.0,
                                                                  top: 0),
                                                          child: RichText(
                                                            textAlign:
                                                                TextAlign.left,
                                                            text: TextSpan(
                                                              style: Tulisan
                                                                  .commic(),
                                                              children: <TextSpan>[
                                                                TextSpan(
                                                                  text:
                                                                      "www.studocu.com/id/document/universitas-lampung/politik-keuangan-daerah/a29-pajak/46173005",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Warna
                                                                        .yellow,
                                                                  ),
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () {
                                                                          _launchURL(
                                                                              "www.studocu.com/id/document/universitas-lampung/politik-keuangan-daerah/a29-pajak/46173005");
                                                                        },
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ), /*
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
                                  ),*/
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 80),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          color: Warna.white,
                          borderRadius: BorderRadius.circular(12)),
                      child: Container(
                        // height: 8,
                        width: double.infinity,
                        // padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Warna.orange2,
                            borderRadius: BorderRadius.circular(12)),

                        child: FractionallySizedBox(
                          alignment: Alignment.centerLeft, // Align to the left

                          widthFactor: 8 / 8, // 20% width of parent

                          child: Container(
                              // height: 8,
                              // width: MediaQuery.of(context).size.width * 0.2,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Warna.blue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text('8/8',
                                    style: Tulisan.buttonJawaban(
                                      color: Warna.white,
                                    )),
                              )),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => MateriPPh07Page(),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_kembali.svg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            _showInputDialog(context);
                          },
                          child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_selesai.svg'),
                        )
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
    );
    ;
  }
}
