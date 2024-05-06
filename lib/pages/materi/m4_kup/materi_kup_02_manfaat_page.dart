import 'package:belajar_sistem_pajak/pages/materi/m1_npwp/materi_npwp_01_pengertian_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m1_npwp/materi_npwp_03_manfaat_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m4_kup/materi_kup_01_pengertian_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m4_kup/materi_kup_03_jenis_page.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:belajar_sistem_pajak/widgets/mark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MateriKUP02Page extends StatefulWidget {
  const MateriKUP02Page({super.key});

  @override
  State<MateriKUP02Page> createState() => _MateriKUP02PageState();
}

class _MateriKUP02PageState extends State<MateriKUP02Page> {
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
                            text: "MATERI KUP")
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
                            text: "02. Manfaat dan Fungsi Pajak")
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            // left: 20.0,
                                                            top: 12),
                                                    child: RichText(
                                                      textAlign: TextAlign.left,
                                                      text: TextSpan(
                                                        style: Tulisan.commic(),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text:
                                                                  "Manfaat Pajak:",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "1.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "Membiayai pengeluaran negara.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "2.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "Meningkatkan kesejahteraan rakyat.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "3.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "Mendorong pertumbuhan ekonomi.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Row(
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "4.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "Memperlancar pembangunan nasional.",
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            // left: 20.0,
                                                            top: 12),
                                                    child: RichText(
                                                      textAlign: TextAlign.left,
                                                      text: TextSpan(
                                                        style: Tulisan.commic(),
                                                        children: <TextSpan>[
                                                          TextSpan(
                                                              text:
                                                                  "Fungsi Pajak:",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold)),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "1.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      RichText(
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        text:
                                                                            TextSpan(
                                                                          style:
                                                                              Tulisan.commic(),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                              text: "Fungsi anggaran (budgeter):",
                                                                              style: TextStyle(fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            bottom:
                                                                                // 12.0),
                                                                                0),
                                                                        child:
                                                                            RichText(
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          text:
                                                                              TextSpan(
                                                                            style:
                                                                                Tulisan.commic(),
                                                                            children: <TextSpan>[
                                                                              TextSpan(
                                                                                text: "Pajak digunakan untuk membiayai pengeluaran negara.",
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
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "2.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      RichText(
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        text:
                                                                            TextSpan(
                                                                          style:
                                                                              Tulisan.commic(),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                              text: "Fungsi regulasi:",
                                                                              style: TextStyle(fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            bottom:
                                                                                // 12.0),
                                                                                0),
                                                                        child:
                                                                            RichText(
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          text:
                                                                              TextSpan(
                                                                            style:
                                                                                Tulisan.commic(),
                                                                            children: <TextSpan>[
                                                                              TextSpan(
                                                                                text: "Pajak digunakan untuk mengatur dan mengendalikan kegiatan ekonomi.",
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
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "3.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      RichText(
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        text:
                                                                            TextSpan(
                                                                          style:
                                                                              Tulisan.commic(),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                              text: "Fungsi redistribusi:",
                                                                              style: TextStyle(fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            bottom:
                                                                                // 12.0),
                                                                                0),
                                                                        child:
                                                                            RichText(
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          text:
                                                                              TextSpan(
                                                                            style:
                                                                                Tulisan.commic(),
                                                                            children: <TextSpan>[
                                                                              TextSpan(
                                                                                text: "Pajak digunakan untuk mendistribusikan pendapatan dari kelompok kaya ke kelompok miskin.",
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
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                SizedBox(
                                                                  width: 24,
                                                                  child:
                                                                      RichText(
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    text:
                                                                        TextSpan(
                                                                      style: Tulisan
                                                                          .commic(),
                                                                      children: <TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              "4.",
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      RichText(
                                                                        textAlign:
                                                                            TextAlign.left,
                                                                        text:
                                                                            TextSpan(
                                                                          style:
                                                                              Tulisan.commic(),
                                                                          children: <TextSpan>[
                                                                            TextSpan(
                                                                              text: "Fungsi stabilitas:",
                                                                              style: TextStyle(fontWeight: FontWeight.bold),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: const EdgeInsets
                                                                            .only(
                                                                            bottom:
                                                                                // 12.0),
                                                                                0),
                                                                        child:
                                                                            RichText(
                                                                          textAlign:
                                                                              TextAlign.left,
                                                                          text:
                                                                              TextSpan(
                                                                            style:
                                                                                Tulisan.commic(),
                                                                            children: <TextSpan>[
                                                                              TextSpan(
                                                                                text: "Pajak digunakan untuk menjaga stabilitas ekonomi.",
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

                          widthFactor: 2/9, // 20% width of parent

                          child: Container(
                              // height: 8,
                              // width: MediaQuery.of(context).size.width * 0.2,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Warna.blue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text('2/9',
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
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) => MateriKUP01Page(),
                            ));
                          },
                          child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_kembali.svg'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => MateriKUP03Page(),
                              ),
                            );
                          },
                          child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_lanjut.svg'),
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