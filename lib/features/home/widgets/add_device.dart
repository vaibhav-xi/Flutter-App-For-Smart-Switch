import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

Widget addDevice() {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Smart Home",
              style:
                  GoogleFonts.rubik(fontSize: 25, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 221, 191, 191)),
            ),
          ],
        ),
        CupertinoButton(
            alignment: Alignment.center,
            borderRadius: BorderRadius.circular(15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            minSize: 50,
            color: const Color(0xFF282636),
            child: Row(
              children: [
                Text(
                  "New Device  ",
                  style: GoogleFonts.rubik(fontSize: 20, color: Colors.grey),
                ),
                const Icon(
                  Iconsax.add_circle,
                  color: Colors.grey,
                  size: 25,
                )
              ],
            ),
            onPressed: () {})
      ],
    ),
  );
}
