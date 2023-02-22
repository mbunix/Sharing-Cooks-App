import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/view_models/bottom_nav_view_model.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/presentation/core/widgets/bottom_nav/bottom_nav_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/bottom_nav/cook_bottom_nav_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, BottomNavViewModel>(
      converter: (Store<AppState> store) => BottomNavViewModel.fromStore(store),
      builder: (BuildContext context, BottomNavViewModel vm) {
        return Scaffold(
          body: IndexedStack(
            index: vm.selectedProfile == ProfileType.cook
                ? vm.currentCookBottomNavIndex
                : vm.currentIndex,
            children:
                vm.selectedProfile == ProfileType.cook ? cookScreens : screens,
          ),
          bottomNavigationBar: vm.selectedProfile == ProfileType.cook
              ? CookBottomNavBar(
                  currentIndex: vm.currentCookBottomNavIndex,
                )
              : BottomNavBar(
                  currentIndex: vm.currentIndex,
                ),
        );
      },
    );
  }
}
