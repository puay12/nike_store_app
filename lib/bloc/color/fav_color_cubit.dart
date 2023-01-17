import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:nike_store_app/bloc/color/fav_color_state.dart';
// import 'package:nike_store_app/bloc/color/fav_color_items.dart';
import 'package:nike_store_app/constants/theme.dart';

class FavColorCubit extends Cubit<FavColorState> {
  FavColorCubit() : super(FavColorState(lightGray));

  void changeFavColor(Color color) {
    Color _color = (color == lightGray) ? defaultRed : lightGray;
    emit(FavColorState(_color));
  }
}
