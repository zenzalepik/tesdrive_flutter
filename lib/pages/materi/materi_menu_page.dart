import 'package:belajar_sistem_pajak/front_menu_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m2_spt/materi_spt_01_pengertian_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m3_pph/materi_pph_01_pengertian_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/m4_kup/materi_kup_01_pengertian_page.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/pages/materi/m1_npwp/materi_npwp_01_pengertian_page.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MateriMenuPage extends StatefulWidget {
  const MateriMenuPage({super.key});

  @override
  State<MateriMenuPage> createState() => _MateriMenuPageState();
}

class _MateriMenuPageState extends State<MateriMenuPage> {
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
                          'assets/images/svg/img_tombol_materi.svg', // Path ke file SVG di dalam proyek Anda
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MateriNpwp01Page()),
                            );
                          },
                          child: Image.asset(
                            'assets/images/img_menu_materi_npwp.png', // Path ke file SVG di dalam proyek Anda
                            width: 120,
                            // fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(width: 32),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MateriSpt01Page()),
                            );
                          },
                          child: Image.asset(
                            'assets/images/img_menu_materi_spt.png',
                            width: 120,
                            // fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MateriPPh01Page()),
                            );
                          },
                          child: Image.asset(
                            'assets/images/img_menu_materi_pph.png', // Path ke file SVG di dalam proyek Anda
                            width: 120,
                            // fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(width: 32),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MateriKUP01Page()));
                          },
                          child: Image.asset(
                            'assets/images/img_menu_materi_kup.png',
                            width: 120,
                            // fit: BoxFit.fitWidth,
                          ),
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
                                            "Semangat!!! ...",
                                            textAlign: TextAlign.left,
                                            style: Tulisan.chat(),
                                          ),
                                          Text("Isyaa Allah, kamu pasti bisa.",
                                              textAlign: TextAlign.left,
                                              style: Tulisan.chat())
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
