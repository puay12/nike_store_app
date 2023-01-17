import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store_app/models/shoes_catalog_models.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      'All Shoes',
      'Outdoor',
      'Tennis',
      'Soccer',
      'Stylish',
      'Fancy'
    ];

    return Scaffold(
      backgroundColor: darkWhite,
      body: SafeArea(
        child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 10, right: 20, left: 20),
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
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(semiHighBorderRadius),
                                borderSide: BorderSide(color: defaultGray)),
                            hintText: 'Looking for Shoes',
                            hintStyle: TextStyle(color: defaultGray),
                            fillColor: defaultWhite,
                            focusColor: defaultBlue,
                            prefixIcon: Icon(Icons.search)),
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
                    Container(
                      child: Row(
                        children: [
                          Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              child: Align(
                                alignment: Alignment(-1, 0),
                                child: Text(
                                  'Popular Shoes',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: semiBold,
                                    color: defaultBlack,
                                  ),
                                ),
                              )),
                          Flexible(
                              flex: 1,
                              fit: FlexFit.loose,
                              child: Align(
                                alignment: Alignment(0.8, 0),
                                child: Text(
                                  'See All',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: medium,
                                    color: defaultBlue,
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: defaultWhite,
                              borderRadius: BorderRadius.circular(highBorderRadius)
                            ),
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    child: GestureDetector(
                                      child: SvgPicture.asset('assets/icons/favorite.svg'),
                                      onTap: () {},)
                                  ),
                                  Container(
                                    child: Image.asset('assets/images/shoes/nike_jordan_1.png'),
                                  ),
                                  Container(
                                    child: Column(
                                      children: [
                                        Text(
                                          'BEST SELLER',
                                          style: TextStyle(
                                            color: defaultBlue,
                                            fontSize: 12,
                                            fontWeight: medium,
                                            fontFamily: 'Poppins',
                                          ),
                                        ),
                                        Text(
                                          'Nike Jordan',
                                          style: TextStyle(
                                            color: defaultGray,
                                            fontSize: 16,
                                            fontWeight: semiBold,
                                            overflow: TextOverflow.fade
                                          ),
                                        ),
                                        Text(
                                          '\$302.00',
                                          style: TextStyle(
                                            color: defaultBlack,
                                            fontSize: 14,
                                            fontWeight: medium,
                                            fontFamily: 'Poppins',
                                            overflow: TextOverflow.fade
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              // NEW ARRIVALS
            ])),
      ),
    );
  }
}
