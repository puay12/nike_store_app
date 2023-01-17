import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store_app/widgets/home_shoe_card.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_store_app/widgets/home_subheading.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _selectedNavbar = 0;

    List<Map<String, dynamic>> shoes = [
      {
        'name': 'Nike Jordan',
        'image': 'assets/images/shoes/nike_jordan_1.png',
        'best_seller': 1,
        'price': '\$302.00',
      },
      {
        'name': 'Nike Air Max',
        'image': 'assets/images/shoes/nike_air_max_1.png',
        'best_seller': 1,
        'price': '\$752.00',
      },
    ];

    List<String> categories = [
      'All Shoes',
      'Outdoor',
      'Tennis',
      'Soccer',
      'Stylish',
      'Fancy'
    ];

    List<String> subheadings = ['Popular Shoes', 'New Arrivals'];

    void _changeSelectedNavBar(int index) {
      setState(() {
        _selectedNavbar = index;
      });
    }

    return Scaffold(
      backgroundColor: darkWhite,
      body: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 26),
            child: Column(children: [
              Stack(children: [
                Container(
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.topLeft,
                            child: SvgPicture.asset(
                              'assets/icons/menu.svg',
                              width: 25,
                              height: 18,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        fit: FlexFit.loose,
                        child: Container(
                          //BoxDecoration
                          child: Center(
                            child: Text('Explore',
                                style: TextStyle(
                                    color: defaultBlack,
                                    fontSize: 32,
                                    fontWeight: bold)),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: GestureDetector(
                          onTap: () {},
                          child: Align(
                            alignment: Alignment(1, 0),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: defaultWhite, shape: BoxShape.circle),
                              child: SvgPicture.asset(
                                'assets/icons/chart.svg',
                                width: 26,
                                height: 26,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  child: Align(
                      alignment: Alignment(-0.4, 0),
                      child: Image.asset('assets/images/highlight_black.png',
                          width: 18, height: 18)),
                )
              ]),
              SizedBox(
                height: 24,
              ),
              // SEARCH BAR
              Container(
                child: Row(
                  children: [
                    Flexible(
                      flex: 4,
                      fit: FlexFit.loose,
                      child: SizedBox(
                        height: 52,
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      semiHighBorderRadius),
                                  borderSide: BorderSide(color: defaultGray)),
                              hintText: 'Looking for Shoes',
                              hintStyle: TextStyle(color: defaultGray),
                              fillColor: defaultWhite,
                              focusColor: defaultBlue,
                              prefixIcon: Icon(Icons.search)),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Align(
                        alignment: Alignment(1, 0),
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              color: defaultBlue, shape: BoxShape.circle),
                          child: SvgPicture.asset('assets/icons/sliders.svg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              // SELECT CATEGORY
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Align(
                        alignment: Alignment(-1, 0),
                        child: Text(
                          'Select Category',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: semiBold,
                            color: defaultBlack,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: categories.map((data) {
                          return GestureDetector(
                            onTap: () {},
                            child: Container(
                              margin: EdgeInsets.only(right: 16),
                              width: 108,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: (data == 'Outdoor')
                                      ? defaultBlue
                                      : defaultWhite,
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(smallBorderRadius))),
                              child: Center(
                                  child: Text(
                                '${data}',
                                style: TextStyle(
                                    color: (data == 'Outdoor')
                                        ? defaultWhite
                                        : defaultBlack,
                                    fontWeight: regular,
                                    fontSize: 12),
                              )),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              // POPULAR SHOES
              Container(
                child: Column(
                  children: [
                    HomeSubHeading(subheading: subheadings[0]),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Row(children: [
                        HomeShoeCard(
                            name: shoes[0]['name'],
                            image: shoes[0]['image'],
                            price: shoes[0]['price'],
                            best_seller: shoes[0]['best_seller']),
                        SizedBox(
                          width: 16,
                        ),
                        HomeShoeCard(
                            name: shoes[1]['name'],
                            image: shoes[1]['image'],
                            price: shoes[1]['price'],
                            best_seller: shoes[1]['best_seller']),
                      ]),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              // NEW ARRIVALS
              Container(
                child: Column(
                  children: [
                    HomeSubHeading(subheading: subheadings[1]),
                    SizedBox(height: 5),
                    Container(
                      width: double.infinity,
                      child: Image.asset(
                        'assets/images/new_arrival_poster_1.png',
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              )
            ])),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile'
          )
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: defaultBlue,
        unselectedItemColor: lightGray,
        showUnselectedLabels: true,
      ),
    );
  }
}
