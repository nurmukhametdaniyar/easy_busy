import 'package:easy_busy/screens/category_screen/confirm_choice_screen.dart';
import 'package:easy_busy/widgets/main_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Что вы хотите?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF4F4F4F),
                  fontFamily: 'Open Sans',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                children: [
                  Expanded(
                    child: Hero(
                      tag: 'employer',
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => ConfirmChoiceScreen(
                                title: 'Я заказчик',
                                subtitle: 'Хочу найти специалистов для выполнения работ',
                                assetImagePath: 'assets/images/employer_img.png',
                                heroTag: 'employer',
                              ),
                            ),
                          );
                        },
                        child: MainCard(
                          'assets/images/employer_img.png',
                          'Я заказчик',
                          subtitle:
                          'Хочу найти специалистов для выполнения работ',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Hero(
                      tag: 'worker',
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => ConfirmChoiceScreen(
                                title: 'Я специалист',
                                subtitle: 'Хочу найти работу и заработать деньги',
                                assetImagePath: 'assets/images/worker_img.png',
                                heroTag: 'worker',
                              ),
                            ),
                          );
                        },
                        child: MainCard(
                          'assets/images/worker_img.png',
                          'Я специалист',
                          subtitle: 'Хочу найти работу и заработать деньги',
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
