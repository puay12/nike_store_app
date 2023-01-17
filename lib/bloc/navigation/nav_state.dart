import 'package:equatable/equatable.dart';
import 'package:nike_store_app/bloc/navigation/navbar_items.dart';

class NavigationState extends Equatable {
  final NavbarItem navbarItem;
  final int index;

  NavigationState(this.navbarItem, this.index);

  @override
  List<Object> get props => [this.navbarItem, this.index];
}
