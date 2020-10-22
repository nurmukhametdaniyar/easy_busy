import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dropdown.dart';
import 'package:easy_busy/screens/category_screen/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'enter_code_screen.dart';

class EnterPhoneScreen extends StatefulWidget {
  @override
  _EnterPhoneScreenState createState() => _EnterPhoneScreenState();
}

class _EnterPhoneScreenState extends State<EnterPhoneScreen> {
  TextEditingController _textEditingController = TextEditingController();
  String phoneNumberString = '', phoneCode = '+7';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Введите свой номер телефона',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4F4F4F),
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    CountryPickerDropdown(
                      initialValue: 'KZ',
                      itemFilter: (Country c) =>
                          ['KZ', 'US', 'GR'].contains(c.isoCode),
                      iconEnabledColor: Color(0xFFBDBDBD),
                      dropdownColor: Colors.white,
                      onValuePicked: (Country country) {
                        phoneCode = '+${country.phoneCode}';
                      },
                      itemBuilder: (Country country) {
                        return Text(
                          '+${country.phoneCode}',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(
                              0xFF333333,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        );
                      },
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: _textEditingController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Color(0xFFFFAD00),
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              color: Color(0xFFE8E8E8),
                            ),
                          ),
                        ),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color(
                            0xFF333333,
                          ),
                        ),
                        validator: (String value) {
                          if (value.replaceAll(RegExp(r'[^0-9]'), '').length <
                              10) {
                            return 'Неправильный номер';
                          } else
                            return null;
                        },
                        maxLength: 10,
                        buildCounter: (
                          BuildContext context, {
                          int currentLength,
                          int maxLength,
                          bool isFocused,
                        }) =>
                            null,
                        onChanged: (String value) {
                          phoneNumberString = value;
                          _textEditingController.selection =
                              TextSelection.fromPosition(
                            TextPosition(
                              offset: _textEditingController.text.length,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                  ),
                  child: Text.rich(
                    TextSpan(
                      text: 'Нажимая "Далее", вы соглашаетесь с ',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Open Sans',
                        color: Color(0xFF4F4F4F),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'правилами сервиса',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Open Sans',
                            color: Color(0xFFFFAD00),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  CategoryScreen(),
                            ),
                            (route) => false,
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                          ),
                          color: Colors.transparent,
                          child: Text(
                            'Отменить',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: 'Open Sans',
                              color: Color(0xFFBDBDBD),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    EnterCodeScreen(
                                  '$phoneCode$phoneNumberString',
                                ),
                              ),
                            );
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
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
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
