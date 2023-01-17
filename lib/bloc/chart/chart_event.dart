import 'package:equatable/equatable.dart';

abstract class ChartEvent extends Equatable {
  const ChartEvent();

  @override
  List<Object> get props => [];
}

class AddProduct extends ChartEvent {
  final int productIndex;
  const AddProduct(this.productIndex);

  @override
  List<Object> get props => [productIndex];
  
  @override
  String toString() => 'AddProduct { index: $productIndex }';
}