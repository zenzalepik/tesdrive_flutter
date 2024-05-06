import 'package:belajar_sistem_pajak/pages/materi/m1_npwp/materi_npwp_02_jenis_page.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:belajar_sistem_pajak/widgets/mark.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MateriNpwp01Page extends StatefulWidget {
  const MateriNpwp01Page({super.key});

  @override
  State<MateriNpwp01Page> createState() => _MateriNpwp01PageState();
}

class _MateriNpwp01PageState extends State<MateriNpwp01Page> {
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
                            text: "MATERI NPWP")
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
                            text: "01. Pengertian")
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
                                        child: RichText(
                                          textAlign: TextAlign.left,
                                          text: TextSpan(
                                            style: Tulisan.commic(),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: "NPWP",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                text: " adalah singkatan dari ",
                                              ),
                                              TextSpan(
                                                  text:
                                                      "Nomor Pokok Wajib Pajak",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              TextSpan(
                                                text: ".",
                                              ),
                                            ],
                                          ),
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
                                    child: RichText(
                                      textAlign: TextAlign.left,
                                      text: TextSpan(
                                        style: Tulisan.commic(),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text:
                                                "NPWP merupakan nomor yang diberikan kepada ",
                                          ),
                                          TextSpan(
                                              text: "Wajib Pajak sebagai",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          TextSpan(
                                            text:
                                                " sarana administrasi perpajakan.",
                                          ),
                                          TextSpan(
                                            text: ".",
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
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
                                    child: Text(
                                      "NPWP berfungsi sebagai tanda pengenal diri atau identitas Wajib Pajak dalam melaksanakan hak dan kewajibannya perpajakannya.",
                                      textAlign: TextAlign.left,
                                      style: Tulisan.commic(),
                                    ),
                                  ),
                                ),
                              ),
                              /*Positioned(
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
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/img_npwp.png", width: 300),
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                      child: Text(
                        "Peraturan Menteri Keuangan Nomor 112/PMK. 03/2022 disebutkan bahwa terdapat perubahan format NPWP dari 15 digit menjadi 16 digit.",
                        style: Tulisan.description(),
                      ),
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

                          widthFactor: 1 / 9, // 20% width of parent

                          child: Container(
                              // height: 8,
                              // width: MediaQuery.of(context).size.width * 0.2,
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Warna.blue,
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                child: Text('1/9',
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
                            Navigator.of(context).pop();
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
                                builder: (context) => MateriNpwp02Page(),
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
