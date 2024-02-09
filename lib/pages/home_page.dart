import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hw/widgets/bottom_nav_bar.dart';
import 'package:hw/widgets/categories_widget.dart';
import 'package:hw/widgets/menu_widget.dart';
import 'package:hw/widgets/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  List<String> foodItems = [
    'Пицца',
    'Бургеры и Роллы',
    'Закуски',
    'Фри и Соусы',
    'Напитки',
    'Десерты'
  ];
  final List<Widget> _advertisingList = [
    const Advertising(),
    const Advertising(),
    const Advertising(),
    const Advertising(),
    const Advertising(),
  ];

  CarouselController controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 6,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Expanded(
            child: Column(
              children: [
                const SearchWidget(),
                CarouselSlider(
                  carouselController: controller,
                  items: _advertisingList,
                  options: CarouselOptions(
                    height: 160.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 0.8,
                  ),
                ),
                //  const Expanded(child: TopMenus()),
                const TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(fontSize: 20),
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(text: 'Пицца'),
                    Tab(text: 'Бургеры и Роллы'),
                    Tab(text: 'Закуски'),
                    Tab(text: 'Фри и Соусы'),
                    Tab(text: 'Напитки'),
                    Tab(text: 'Десерты'),
                  ],
                ),
                Flexible(
                    flex: 1,
                    child: TabBarView(
                      children: [
                        const MenuWidget(),
                        Container(
                          color: Colors.redAccent,
                        ),
                        Container(
                          color: Colors.green,
                        ),
                        Container(
                          color: Colors.yellow,
                        ),
                        Container(color: Colors.blue),
                        Container(
                          color: Colors.red,
                        ),
                      ],
                    )),
                //  const MenuWidget(),
              ],
            ),
          ),
          bottomNavigationBar: const BottomNavBarWidget(),
        ),
      ),
    );
  }
}

class Advertising extends StatelessWidget {
  const Advertising({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: const DecorationImage(
          image: AssetImage('assets/icons/pizzasale.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
