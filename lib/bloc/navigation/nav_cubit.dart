import 'package:bloc/bloc.dart';
import 'package:nike_store_app/bloc/navigation/nav_state.dart';
import 'package:nike_store_app/bloc/navigation/navbar_items.dart';

class NavigationCubit extends Cubit<NavigationState> {
  NavigationCubit() : super(NavigationState(NavbarItem.home, 0));

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(NavigationState(NavbarItem.home, 0));
        break;
      case NavbarItem.favorite:
        emit(NavigationState(NavbarItem.favorite, 1));
        break;
      case NavbarItem.notifications:
        emit(NavigationState(NavbarItem.notifications, 2));
        break;
      case NavbarItem.profile:
        emit(NavigationState(NavbarItem.profile, 3));
        break;
    }
  }
}
