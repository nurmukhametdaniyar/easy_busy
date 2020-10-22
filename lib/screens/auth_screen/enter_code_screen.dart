import 'package:easy_busy/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:timer_count_down/timer_count_down.dart';

class EnterCodeScreen extends StatefulWidget {
  final String phoneNumber;

  const EnterCodeScreen(this.phoneNumber);

  @override
  _EnterCodeScreenState createState() => _EnterCodeScreenState();
}

class _EnterCodeScreenState extends State<EnterCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Введите код из СМС',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4F4F4F),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 22,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      offset: Offset(1, 1),
                      blurRadius: 3,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Код отправлен на ${widget.phoneNumber}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF828282),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 11,
                    ),
                    PinCodeTextField(
                      appContext: context,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.circular(10),
                        fieldHeight: 60,
                        fieldWidth: 60,
                        inactiveColor: Colors.grey,
                        inactiveFillColor: Colors.white,
                        activeColor: Color(0xFFFFAD00),
                        selectedFillColor: Colors.white,
                        selectedColor: Color(0xFFFFAD00),
                        activeFillColor: Colors.white,
                      ),
                      cursorColor: Colors.black,
                      animationDuration: Duration(milliseconds: 300),
                      textStyle: TextStyle(fontSize: 20, height: 1.6),
                      backgroundColor: Colors.white,
                      enableActiveFill: true,
                      keyboardType: TextInputType.phone,
                      onCompleted: (v) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  ProfileScreen(),
                            ),
                            (route) => false);
                      },
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Countdown(
                      seconds: 30,
                      build: (BuildContext context, double time) {
                        if (time != 0)
                          return Text(
                            'Получить код повторно через ${time.toStringAsFixed(0)} сек',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF828282),
                            ),
                          );
                        else
                          return Text(
                            'ПОЛУЧИТЬ КОД',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFFFFAD00),
                            ),
                          );
                      },
                      interval: Duration(milliseconds: 100),
                    ),
                    SizedBox(
                      height: 36,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Отменить',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF828282),
                        ),
                        textAlign: TextAlign.left,
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
