import 'package:belajar_sistem_pajak/pages/ujian/sertifikat_page.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/pages/kuis/kuis_menu_page.dart';
import 'package:belajar_sistem_pajak/pages/materi/materi_menu_page.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FrontMenuPage extends StatefulWidget {
  const FrontMenuPage({super.key});

  @override
  State<FrontMenuPage> createState() => _FrontMenuPageState();
}

class _FrontMenuPageState extends State<FrontMenuPage> {
  String nama_pengguna = "Ringgo";
  int _bintangNpwpLevel1 = 0;
  int _bintangNpwpLevel2 = 0;
  int _bintangNpwpLevel3 = 0;
  int _bintangNpwpLevel4 = 0;
  int _bintangNpwpLevel5 = 0;
  int _bintangNpwpLevel6 = 0;
  String _rataRataBintang = '';
  // bool _answered = false;
  @override
  void initState() {
    super.initState();
    _loadNama();
    _loadBintang();
  }

  void _loadNama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      nama_pengguna = prefs.getString('nama') ?? '';
    });
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

    _hitungRataRataBintang();
  }

  // Menghitung rata-rata
  void _hitungRataRataBintang() {
    double average = (_bintangNpwpLevel1 +
            _bintangNpwpLevel2 +
            _bintangNpwpLevel3 +
            _bintangNpwpLevel4 +
            _bintangNpwpLevel5 +
            _bintangNpwpLevel6) /
        6;

    // Menentukan nilai yang akan diprint berdasarkan rata-rata
    setState(() {
      if (average == 0 || average < 1) {
        _rataRataBintang = "0";
      } else if (average >= 0.5 && average < 2) {
        _rataRataBintang = "1";
      } else if (average >= 2 && average < 3) {
        _rataRataBintang = "2";
      } else if (average >= 3) {
        _rataRataBintang = "3";
      } else {
        _rataRataBintang = "ada yang salah";
      }
      print('Rata-rata bintang NPWP: $_rataRataBintang');
    });
  }

  void mauIkutUjian(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: false, // Tidak dapat ditutup dengan mengklik di luar modal

      builder: (BuildContext context) {
        return Container(
          color: Warna.dark_purple,
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child:
                        Center(child: Text('Mohon Maaf', style: Tulisan.H3())),
                  ),
                ],
              ),
              Divider(
                color: Warna.white,
                thickness: 1.0, // Ketebalan garis, bisa disesuaikan
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                              textAlign: TextAlign.center,
                              "Kamu harus mencapai bintang 3 di semua level untuk bisa mengikuti Ujian.",
                              style: Tulisan.commic()),
                        ),
                        SizedBox(height: 12),
                        Center(
                          child: Text(
                              textAlign: TextAlign.center,
                              "Tetap semangat untuk belajar  ya...!",
                              style: Tulisan.commic()),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      '   Siap!   ',
                      style: Tulisan.H1(color: Warna.purple),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
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
              'Halo $nama_pengguna!',
              style: Tulisan.H1(), // Menggunakan primaryTextStyle dari katalog
            ),
            centerTitle: true,
            leading: IconButton(
              icon: SvgPicture.asset(
                'assets/images/svg/img_menu_drawer.svg', // Path ke file SVG di dalam proyek Anda
                // width: 180,
              ),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/images/svg/img_menu_close.svg', // Path ke file SVG di dalam proyek Anda
                  // width: 180,
                ),
                onPressed: () {
                  Navigator.pop(context);
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
              Image.asset("assets/images/img_bg_home.png"),
              // Positioned(
              //   top: 48,
              //   right: 12,
              //   child: SvgPicture.asset(
              //     'assets/images/svg/img_planets.svg', // Path ke file SVG di dalam proyek Anda
              //     width: 180,
              //   ),
              // ),
              SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset(
                            _rataRataBintang == '0'
                                ? 'assets/images/svg/img_kd_ipk_bintang0.svg'
                                : _rataRataBintang == '1'
                                    ? 'assets/images/svg/img_kd_ipk_bintang1.svg'
                                    : _rataRataBintang == '2'
                                        ? 'assets/images/svg/img_kd_ipk_bintang2.svg'
                                        : _rataRataBintang == '3'
                                            ? 'assets/images/svg/img_kd_ipk_bintang3.svg'
                                            : 'Ada Yang Salah',
                            width: 180,
                          ),
                          SvgPicture.asset(
                            'assets/images/svg/img_plane_space.svg', // Path ke file SVG di dalam proyek Anda
                            width: 132,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/img_stone.png',
                            width: 40,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MateriMenuPage()),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_materi.svg', // Path ke file SVG di dalam proyek Anda
                              // width: 180,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => KuisMenuPage()),
                              );
                            },
                            child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_kuis.svg', // Path ke file SVG di dalam proyek Anda
                              // width: 180,
                            ),
                          ),
                          Image.asset(
                            'assets/images/img_planet_purple.png',
                            width: 40,
                          ),
                        ],
                      ),
                      SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset(
                            'assets/images/svg/img_planet_nepton.svg',
                            width: 80,
                          ),
                          GestureDetector(
                            onTap: () {
                              _rataRataBintang == '3'
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SertifikatPage()),
                                    )
                                  : mauIkutUjian(context);
                            },
                            child: SvgPicture.asset(
                              'assets/images/svg/img_tombol_ujian.svg', // Path ke file SVG di dalam proyek Anda
                              // width: 180,
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
