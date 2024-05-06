import 'dart:io';

import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/pages/kuis/k1_npwp/level1_npwp/kuis_level01_01_page.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:pdf/pdf.dart';

import 'package:pdf/widgets.dart' as pw;

class SertifikatPage extends StatefulWidget {
  const SertifikatPage({super.key});

  @override
  State<SertifikatPage> createState() => _SertifikatPageState();
}

class _SertifikatPageState extends State<SertifikatPage> {
  String nama_pengguna = "Ringgo";
  int _bintangNpwpLevel1 = 0;

  @override
  void initState() {
    super.initState();
    _loadBintang();
    _loadNama();
  }

  void _loadBintang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _bintangNpwpLevel1 = prefs.getInt('bintangNpwpLevel1') ?? 0;
      // _bintangNpwpLevel1 = 0;
    });
  }

  void _loadNama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nama_pengguna = prefs.getString('nama') ?? '';
    });
  }

  Future<void> createPdf() async {
    Directory? directory = await getExternalStorageDirectory();
    if (directory != null) {
      final pdf = pw.Document();

      pdf.addPage(
        pw.Page(
          build: (pw.Context context) {
            return pw.Center(
              child:
                  pw.Text('Hello, World!', style: pw.TextStyle(fontSize: 40)),
            );
          },
        ),
      );

      final String path =
          '${directory.path}/Sertifikat_Belajar_Sistem_Perpajakan.pdf';
      final File file = File(path);
      await file.writeAsBytes(await pdf.save());

      print('PDF saved to: $path');
    } else {
      print('External storage directory is not available.');
    }
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
                        GestureDetector(
                          onTap: createPdf,
                          child: Text('Sertifikat',
                              style: Tulisan.H1(color: Warna.white)),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(
                              textAlign: TextAlign.center,
                              'Selamat atas pencapaian kelulusan dalam belajar di aplikasi Perjalanan Oiko Nomo belajar sistem pajakan dari dasar',
                              style: Tulisan.description(
                                  color: Warna.white,
                                  textAlign: TextAlign.center)),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                              textAlign: TextAlign.center,
                              '$nama_pengguna',
                              style: Tulisan.H3(
                                  color: Warna.white,
                                  textAlign: TextAlign.center)),
                        ),
                      ],
                    )
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
