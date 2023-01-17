import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';

enum FavColorEvent { to_red }

class FavColorBloc extends Bloc<FavColorEvent, Color> {
  Color _color = defaultWhite;

  FavColorBloc(super.initialState);

  @override
  Color get initialState => defaultWhite;

  @override
  Stream<Color> mapEventToState(FavColorEvent event) async* {
    _color = (_color == defaultWhite) ? defaultRed : defaultWhite;
    yield _color;
  }
}
