import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:belajar_sistem_pajak/front_menu_page.dart';
import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _inputText = '';
  TextEditingController _controller = TextEditingController();

  // bool _answered = false;
  @override
  void initState() {
    super.initState();
  }

  void _simpanNama() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('nama', _controller.text);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => FrontMenuPage()),
      ModalRoute.withName(
          '/'), // Gunakan '/' untuk menghapus semua rute dan memulai dari awal
    );
  }

  void _showInputDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
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
                        Text('Siapa Nama Kamu?',
                            style: Tulisan.H1(color: Warna.white)),
                        SizedBox(
                          height: 24,
                        ),
                        TextField(
                          controller: _controller,
                          decoration: InputDecoration(
                            hintText: 'Namaku adalah...',
                            filled: true,
                            fillColor: Warna.white, // Background color
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(12.0), // Border radius
                              borderSide: BorderSide.none, // No border side
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Center(
                          child: ElevatedButton(
                            style: transparan,
                            onPressed: _simpanNama,

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
                                '   Simpan   ',
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
            'Home',
            style: Tulisan.H1(), // Menggunakan primaryTextStyle dari katalog
          ),
          centerTitle: true, // Menempatkan judul di tengah appbar
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
            Positioned(
              bottom: 0,
              right: -40,
              left: -40,
              child: Stack(
                children: [
                  Image.asset('assets/images/img_cloud.png'),
                  Positioned(
                    bottom: 8,
                    right: 0,
                    left: 0,
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset(
                              width: 104, "assets/images/img_logo_lembaga.png"),
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
            ),
            Positioned(
              top: 48,
              right: 12,
              child: SvgPicture.asset(
                'assets/images/svg/img_planets.svg', // Path ke file SVG di dalam proyek Anda
                width: 180,
              ),
            ),
            Positioned(
              top: 96,
              left: 12,
              child: SvgPicture.asset(
                'assets/images/svg/img_rocket.svg', // Path ke file SVG di dalam proyek Anda
                width: 132,
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      height: 240,
                    ),
                    Text(
                      'Petualangan',
                      style: Tulisan.Headline(
                        shadowColor:
                            Warna.black, // Ubah warna shadow menjadi biru
                        shadowBlurRadius: 52,
                      ),
                    ),
                    Text(
                      'Oiko Nomo',
                      style: Tulisan.H3(
                        color: Warna.yellow,
                        shadowColor:
                            Warna.black, // Ubah warna shadow menjadi biru
                        shadowBlurRadius: 52,
                      ),
                    ),
                    Text(
                      '“Tax Edition” ',
                      style: Tulisan.H1_5(
                        color: Warna.orange,
                        shadowColor:
                            Warna.black, // Ubah warna shadow menjadi biru
                        shadowBlurRadius: 52,
                      ),
                    ),
                    SizedBox(
                      height: 72,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: transparan,
                          onPressed: () {
                            _showInputDialog(context);
                          },
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
                                  color:
                                      Warna.blue.withOpacity(1), // Warna shadow
                                  spreadRadius: 20, // Penyebaran shadow
                                  blurRadius: 40, // Blur shadow
                                  offset: Offset(0, 16), // Offset shadow
                                ),
                              ],
                            ),
                            child: Text(
                              'Jelajahi Sekarang',
                              style: Tulisan.H1_5(
                                  fontWeight: FontWeight.normal,
                                  textAlign: TextAlign.center),
                            ),
                          ),
                        )
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
  }
}
