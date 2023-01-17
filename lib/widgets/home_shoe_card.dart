import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_store_app/bloc/color/fav_color_cubit.dart';
import 'package:nike_store_app/bloc/color/fav_color_state.dart';
import 'package:nike_store_app/bloc/favorite_color_bloc.dart';
import 'package:nike_store_app/constants/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeShoeCard extends StatelessWidget {
  const HomeShoeCard(
      {Key? key,
      required this.name,
      required this.image,
      required this.price,
      required this.best_seller})
      : super(key: key);

  final String name;
  final String image;
  final String price;
  final int best_seller;

  @override
  Widget build(BuildContext context) {
    // FavColorBloc favColorBloc = BlocProvider.of<FavColorBloc>(context);

    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: defaultWhite,
          borderRadius: BorderRadius.circular(highBorderRadius)),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 12),
                    child: Image.asset(
                      '$image',
                      width: 150,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      (best_seller == 1)
                          ? Text(
                              'BEST SELLER',
                              style: TextStyle(
                                color: defaultBlue,
                                fontSize: 12,
                                fontWeight: medium,
                                fontFamily: 'Poppins',
                              ),
                            )
                          : SizedBox(
                              width: 8,
                            ),
                      SizedBox(height: 6),
                      Text(
                        '$name',
                        style: TextStyle(
                            color: defaultGray,
                            fontSize: 16,
                            fontWeight: semiBold,
                            overflow: TextOverflow.fade),
                      ),
                      SizedBox(height: 12),
                      Text(
                        '$price',
                        style: TextStyle(
                            color: defaultBlack,
                            fontSize: 14,
                            fontWeight: medium,
                            fontFamily: 'Poppins',
                            overflow: TextOverflow.fade),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          BlocBuilder<FavColorCubit, FavColorState>(
            builder: (context, state) {
              Color currentColor = state.dcolor;
              return GestureDetector(
                onTap: () {
                  BlocProvider.of<FavColorCubit>(context)
                      .changeFavColor(currentColor);
                },
                child: SvgPicture.asset(
                  'assets/icons/favorite.svg',
                  color: currentColor,
                ),
              );
            },
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                decoration: BoxDecoration(
                    color: defaultBlue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(semiHighBorderRadius),
                        bottomRight: Radius.circular(semiHighBorderRadius))),
                child: SvgPicture.asset('assets/icons/add.svg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
