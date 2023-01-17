import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';

class FavColorState extends Equatable {
  Color dcolor = lightGray;

  FavColorState(this.dcolor);

  @override
  List<Object> get props => [this.dcolor];
}
