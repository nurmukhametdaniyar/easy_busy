import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  String assetImagePath, title, subtitle;
  TextAlign textAlign;
  double height,
      titleTextSize,
      subtitleTextSize,
      verticalPadding,
      horizontalPadding;

  MainCard(
    this.assetImagePath,
    this.title, {
    this.subtitle,
    this.textAlign,
    this.height,
    this.titleTextSize,
    this.subtitleTextSize,
    this.verticalPadding,
    this.horizontalPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 15, vertical: verticalPadding ?? 15),
      height: height ?? 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetImagePath),
          alignment: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            offset: Offset(1, 1),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Material(
            color: Colors.transparent,
            child: Text(
              title,
              style: TextStyle(
                fontSize: titleTextSize ?? 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Open Sans',
              ),
              textAlign: textAlign ?? TextAlign.center,
            ),
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              subtitle ?? '',
              style: TextStyle(
                fontSize: subtitleTextSize ?? 10,
                fontFamily: 'Open Sans',
                color: Color(0xFF676766),
              ),
              textAlign: textAlign ?? TextAlign.center,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
