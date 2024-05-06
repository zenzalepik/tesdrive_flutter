import 'package:belajar_sistem_pajak/styles/colors.dart';
import 'package:belajar_sistem_pajak/styles/typography.dart';
import 'package:belajar_sistem_pajak/widgets/buttons.dart';
import 'package:flutter/material.dart';

class MarkEmas extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MarkEmas({
    Key? key, // Tambahkan tanda tanya (?) untuk membuatnya nullable
    required this.text, // Tambahkan kata kunci required
    required this.onPressed, // Tambahkan kata kunci required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
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

class MarkSubtitle extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MarkSubtitle({
    Key? key, // Tambahkan tanda tanya (?) untuk membuatnya nullable
    required this.text, // Tambahkan kata kunci required
    required this.onPressed, // Tambahkan kata kunci required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 64, vertical: 8),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Warna.white,
            Warna.white,
            Warna.white,
            const Color.fromARGB(255, 226, 213, 255)
          ], // Warna gradien
        ),
        borderRadius: BorderRadius.circular(12),
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
        style: Tulisan.subtitle(
            // fontWeight: FontWeight.normal,
            textAlign: TextAlign.center,
            color: Warna.purple),
      ),
    );
  }
}

class MarkSubtitleSmall extends StatelessWidget {
  final String nomor_soal;
  final String kategori_dan_level;
  final VoidCallback onPressed;

  const MarkSubtitleSmall({
    Key? key, // Tambahkan tanda tanya (?) untuk membuatnya nullable
    required this.nomor_soal, // Tambahkan kata kunci required
    required this.kategori_dan_level, // Tambahkan kata kunci required
    required this.onPressed, // Tambahkan kata kunci required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 4),
      decoration: BoxDecoration(
        border: Border.all(
            width: 1, color: const Color.fromARGB(108, 255, 255, 255)),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(104, 0, 0, 0),
            const Color.fromARGB(141, 0, 0, 0),
            const Color.fromARGB(131, 34, 0, 57),
            Color.fromARGB(255, 30, 21, 48),
            Color.fromARGB(255, 30, 21, 48)
          ], // Warna gradien
        ),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Warna.yellow2.withOpacity(0.24), // Warna shadow
            spreadRadius: 20, // Penyebaran shadow
            blurRadius: 40, // Blur shadow
            offset: Offset(0, 16), // Offset shadow
          ),
        ],
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: Tulisan.description(),
            children: <TextSpan>[
              TextSpan(
                text: nomor_soal,
                // "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: " ------------------- ",
              ),
              TextSpan(
                text: kategori_dan_level,
                // "a. Obyek Pajak:",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
