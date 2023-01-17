import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 10, right: 20, left: 20),
          child: Column(
            children: [
              Stack(
                children: [
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
                      child: Image.asset('assets/images/highlight_black.png', width: 18, height: 18)
                    ),
                  )
                ]
              ),
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
                            borderRadius: BorderRadius.circular(semiHighBorderRadius), 
                            borderSide: BorderSide(color: defaultGray)),
                          hintText: 'Looking for Shoes',
                          hintStyle: TextStyle(color: defaultGray),
                          fillColor: defaultWhite,
                          focusColor: defaultBlue,
                          prefixIcon: Icon(Icons.search)
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Align(
                        alignment: Alignment(1, 0),
                        child: Container(
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: defaultBlue,
                            shape: BoxShape.circle
                          ),
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
              Column(
                children: [
                  Text('Halo'),
                  Container(
                    height: 70,
                    color: defaultBlue,
                  )
                ],
              )
              // POPULAR SHOES
              // NEW ARRIVALS
            ]
          )
        ),
      ),
    );
  }
}
