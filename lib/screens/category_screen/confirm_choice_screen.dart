import 'package:easy_busy/screens/auth_screen/enter_phone_screen.dart';
import 'package:easy_busy/widgets/main_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmChoiceScreen extends StatefulWidget {
  final String title, subtitle, assetImagePath, heroTag;

  const ConfirmChoiceScreen(
      {Key key, this.title, this.subtitle, this.assetImagePath, this.heroTag})
      : super(key: key);

  @override
  _ConfirmChoiceScreenState createState() => _ConfirmChoiceScreenState();
}

class _ConfirmChoiceScreenState extends State<ConfirmChoiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Hero(
                        tag: widget.heroTag,
                        child: GestureDetector(
                          onTap: () {},
                          child: MainCard(
                            widget.assetImagePath,
                            widget.title,
                            subtitle: widget.subtitle,
                            height: 351,
                            titleTextSize: 28,
                            subtitleTextSize: 21,
                            verticalPadding: 33,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                EnterPhoneScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFED000),
                              Color(0xFFFFAD00),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(1, 1),
                              blurRadius: 3,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.done,
                          color: Colors.white,
                          size: 37,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
