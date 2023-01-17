import 'package:flutter/material.dart';

abstract class ChartState {
  final List<int> chartItem;
  const ChartState({required this.chartItem});

  @override
  List<Object> get props => [];
}

class ProductAdded extends ChartState {
  final List<int> chartItem;

  const ProductAdded({required this.chartItem}) : super(chartItem: chartItem);

  @override
  List<Object> get props => [chartItem];

  @override
  String toString() => 'ProductAdded { todos: $chartItem }';
}
