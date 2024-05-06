import 'dart:ui';

import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:flutter/material.dart';

final ButtonStyle tombolUngu = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87,
  backgroundColor: Colors.grey[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(16)),
  ),
);

final ButtonStyle transparan = ElevatedButton.styleFrom(
  foregroundColor: const Color.fromARGB(0, 0, 0, 0),
  backgroundColor: const Color.fromARGB(0, 224, 224, 224),
);

class TombolEmas extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const TombolEmas({
    Key? key, // Tambahkan tanda tanya (?) untuk membuatnya nullable
    required this.text, // Tambahkan kata kunci required
    required this.onPressed, // Tambahkan kata kunci required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: transparan,
      onPressed: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 64, vertical: 8),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Warna.orange2, Warna.yellow2], // Warna gradien
          ),
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Warna.yellow2.withOpacity(0.24), // Warna shadow
              spreadRadius: 20, // Penyebaran shadow
              blurRadius: 40, // Blur shadow
              offset: Offset(0, 16), // Offset shadow
            ),
          ],
        ),
        child: Text(
          text,
          style: Tulisan.H1_5(
              fontWeight: FontWeight.normal, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}

class ButtonJawabanAbc extends StatefulWidget {
  final String imagePath; // Properti untuk menyimpan lokasi gambar
  final String abjad;
  final String text_jawaban;

  // const ButtonJawabanAbc({super.key});
  const ButtonJawabanAbc(
      {Key? key,
      required this.imagePath,
      required this.abjad,
      required this.text_jawaban})
      : super(key: key);

  @override
  State<ButtonJawabanAbc> createState() => _ButtonJawabanAbcState();
}

class _ButtonJawabanAbcState extends State<ButtonJawabanAbc> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: EdgeInsets.only(top: 40),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                padding: EdgeInsets.fromLTRB(16, 28, 16, 16),
                decoration: BoxDecoration(
                  color: Color(0x6EFFFFFF),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          margin: EdgeInsets.only(right: 8),
                          child: Center(
                            child: Text(
                              widget.abjad,
                              style: Tulisan.buttonJawaban(),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Warna.white,
                              ),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                widget.text_jawaban,
                                style: Tulisan.buttonJawaban(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Image.asset(widget.imagePath, width: 64),
      ],
    );
  }
}
