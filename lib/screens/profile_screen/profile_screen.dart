import 'dart:io';

import 'package:easy_busy/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String avatarImageUrl = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'О себе',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => HomeScreen(),
              ),
              (route) => false,
            );
          },
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF808080),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen(),
                ),
                (route) => false,
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              child: Icon(
                Icons.close,
                color: Color(0xFF808080),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overscroll) {
            overscroll.disallowGlow();
          },
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 90,
                  vertical: 20,
                ),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Добавьте свое фото',
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Open Sans',
                        color: Color(0xFF4F4F4F),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        GestureDetector(
                          onTap: () async {
                            final pickedFile = await ImagePicker().getImage(
                              source: ImageSource.gallery,
                            );
                            if (pickedFile != null)
                              setState(() {
                                avatarImageUrl = pickedFile.path;
                              });
                          },
                          child: CircleAvatar(
                            radius: 85,
                            backgroundColor: Color(0x14000000),
                            child: avatarImageUrl == ''
                                ? Icon(
                                    Icons.camera_alt,
                                    color: Color(0xFFBDBDBD),
                                    size: 65,
                                  )
                                : Container(),
                            backgroundImage: FileImage(
                              File(
                                avatarImageUrl,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 170,
                          width: 170,
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () async {
                                final pickedFile = await ImagePicker().getImage(
                                  source: ImageSource.gallery,
                                );
                                if (pickedFile != null)
                                  setState(() {
                                    avatarImageUrl = pickedFile.path;
                                  });
                              },
                              child: Container(
                                height: 44,
                                width: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                    width: 2,
                                    color: Color(0xFFFFAD00),
                                  ),
                                  color: Color(0xCC070707),
                                ),
                                child: Icon(
                                  avatarImageUrl == ''
                                      ? Icons.add
                                      : Icons.camera_alt,
                                  color: Color(0xFFFFAD00),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 15,
                color: Color(0xFFF2F2F2),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 16,
                ),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Имя',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4F4F4F),
                          fontFamily: 'Open Sans'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Укажите ваше имя',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Open Sans',
                          color: Color(0xFFBDBDBD),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(0xFFBDBDBD),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(0xFFFFAD00),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Email (необязательно)',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF4F4F4F),
                          fontFamily: 'Open Sans'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'name@mail.com',
                        hintStyle: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Open Sans',
                          color: Color(0xFFBDBDBD),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(0xFFBDBDBD),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            color: Color(0xFFFFAD00),
                          ),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => HomeScreen(),
                          ),
                          (route) => false,
                        );
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 13,
                        ),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFFED000),
                              Color(0xFFFFAD00),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          'Далее',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Open Sans',
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
