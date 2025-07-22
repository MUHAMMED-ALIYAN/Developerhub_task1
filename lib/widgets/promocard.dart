import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget promoCard() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
     
      padding: EdgeInsets.symmetric(horizontal: 19, vertical: 16),
      decoration: BoxDecoration(
        color: Color(0XFFE29A4F),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "  25%",
                  style: GoogleFonts.purplePurse(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "   Bestdiscount  ",
                  style: GoogleFonts.rancho(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "   Offer",
                  style: GoogleFonts.rancho(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 80,
            backgroundImage: AssetImage(
                'assets/images/'), // change to your image
          ),
        ],
      ),
    ),
  );
}
