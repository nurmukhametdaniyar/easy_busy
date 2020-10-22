import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:easy_busy/widgets/main_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double currentPosition = 1;
  List<String> carouselBackgroundImagesList = [
    'inst_bg.png',
    'inst_bg.png',
    'inst_bg.png',
  ];
  List<String> carouselTitlesList = [
    'МЫ В INSTAGRAM',
    'МЫ В INSTAGRAM',
    'МЫ В INSTAGRAM',
  ];
  List<String> carouselSubtitlesList = [
    'Актуальная информация, советы, \nрозыгрыши призов и многое другое',
    'Актуальная информация, советы, \nрозыгрыши призов и многое другое',
    'Актуальная информация, советы, \nрозыгрыши призов и многое другое',
  ];
  List<String> uslugiList = [
    'Помощь по хозяйству',
    'Бытовой ремонт',
    'Отделка и строительство',
    'Техника и оборудование',
    'Перевозка и доставка',
    'IT и digital',
    'Красота и здоровье',
    'Деловые услуги',
    'Репетиторы и курсы',
  ];
  List<String> uslugiSubtitlesList = [
    'Уборка, химчистка, садовники и т.д.',
    'Сантехники, электрики, мебельщики и.тд.',
    'Штукатуры, кафельщики, кровля и т.д.',
    'Техники, мастера по ремонту техники и т.д',
    'Газели, курьеры, грузчики и т.д.',
    'Разработчики, дизайнеры, smm, фотографы и т.д.',
    'Массаж, эпиляция,  уход за бровями,  ногтями и т.д.',
    'Бухгалтеры, юристы,  страховщики и т.д.',
    'Языки, школьные предметы и т.д.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF02EFFD),
                              Color(0xFF48AFFD),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.home_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Главная',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF606060),
                        ),
                      ),
                    ],

                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFF34F8DA),
                              Color(0xFF43E980),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.description_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Мои заявки',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF606060),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/central_icons.png'),
                      ),
                    ),
                    child: Icon(
                      Icons.add_circle,
                      color: Color(0xFFFFAD00),
                      size: 30,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFFFBCDE),
                              Color(0xFFFC337C),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Уведомления',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF606060),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Color(0xFFA3D5FF),
                              Color(0xFF2A5FF4),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.settings_outlined,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Настройки',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF606060),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              height: 65,
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 27,
                vertical: 18,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.5, 1),
                    blurRadius: 1,
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Icon(
                      Icons.search,
                      size: 30,
                      color: Color(0xFFFFAD00),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Напишите, кто вам нужен',
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Open Sans',
                            color: Color(0xFFBDBDBD),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            gapPadding: 0,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            gapPadding: 0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26,
            ),
            CarouselSlider.builder(
              itemCount: 3,
              options: CarouselOptions(
                  initialPage: 1,
                  height: 125,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPosition = index.toDouble();
                    });
                  }),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 29,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/${carouselBackgroundImagesList[index]}'),
                      alignment: Alignment.center,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          carouselTitlesList[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 171,
                          child: Text(
                            carouselSubtitlesList[index],
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            DotsIndicator(
              dotsCount: 3,
              position: currentPosition,
              decorator: DotsDecorator(
                activeColor: Color(0xFFF8CD0D),
              ),
            ),
            SizedBox(
              height: 36,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 19,
              ),
              child: Row(
                children: [
                  Container(
                    width: 26,
                    height: 10,
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFAD412),
                          Color(0xFFF69219),
                          Color(0xFFF25821),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Text(
                    'Категории услуг',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 5,
              ),
              shrinkWrap: true,
              itemCount: uslugiList.length,
              itemBuilder: (BuildContext context, int index) {
                return MainCard(
                  'assets/images/usluga${index + 1}.png',
                  uslugiList[index],
                  textAlign: TextAlign.left,
                  height: 207,
                  titleTextSize: 10.5,
                  subtitle: uslugiSubtitlesList[index],
                  subtitleTextSize: 10,
                );
              },
            ),
            SizedBox(
              height: 51,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 19,
              ),
              child: Row(
                children: [
                  Container(
                    width: 26,
                    height: 10,
                    margin: EdgeInsets.only(
                      right: 8,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFFAD412),
                          Color(0xFFF69219),
                          Color(0xFFF25821),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Text(
                    'Популярные вопросы',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Open Sans',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21,
            ),
            Container(
              height: 170,
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xB3BDBDBD),
                            offset: Offset(1, 1),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 25,
                        vertical: 21,
                      ),
                      child: Text(
                        'Выбирите выше нужный для вас раздел услуг.  Напишите в поисковике кто вам нужен или выбирите из предложенного списка. Нажмите на кнопку “Создать заявку” или выбирите определенного специалиста из предложенных категорий',
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xB3000000),
                          fontFamily: 'Open Sans',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xB3BDBDBD),
                          offset: Offset(1, 0.5),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 21,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FittedBox(
                          child: Text(
                            'Мне нужна услуга, как оставить заявку?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: 'Open Sans',
                            ),
                          ),
                        ),
                        Stack(
                          children: [
                            Icon(
                              Icons.help,
                              color: Color(0xFFFB840C),
                              size: 40,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Icons.help,
                                color: Color(0xFFFB840C),
                                size: 10,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xB3BDBDBD),
                      offset: Offset(1, 0.5),
                      blurRadius: 1,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 21,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      child: Text(
                        'Мне нужна услуга, как оставить заявку?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: 'Open Sans',
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.help,
                          color: Color(0xFFFB840C),
                          size: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.help,
                            color: Color(0xFFFB840C),
                            size: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Opacity(
              opacity: 0.6,
              child: Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                height: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xB3BDBDBD),
                      offset: Offset(1, 0.5),
                      blurRadius: 1,
                    ),
                  ],
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 21,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FittedBox(
                      child: Text(
                        'Мне нужна услуга, как оставить заявку?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: 'Open Sans',
                        ),
                      ),
                    ),
                    Stack(
                      children: [
                        Icon(
                          Icons.help,
                          color: Color(0xFFFB840C),
                          size: 40,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Icon(
                            Icons.help,
                            color: Color(0xFFFB840C),
                            size: 10,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 15,
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
                'Посмотреть все ответы',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'Open Sans',
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 75,
            ),
          ],
        ),
      ),
    );
  }
}
