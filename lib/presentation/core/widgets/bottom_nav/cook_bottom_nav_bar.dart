import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/redux/actions/bottom_nav_action.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/help/help_page.dart';
import 'package:sharing_cooks/presentation/my_kitchen/my_kitchen_page.dart';
import 'package:sharing_cooks/presentation/orders/orders_page.dart';
import 'package:sharing_cooks/presentation/orders/pre_orders_page.dart';

class CookBottomNavBar extends StatelessWidget {
  final int currentIndex;
  const CookBottomNavBar({Key? key, required this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      key: bottomNavKey,
      elevation: 24,
      currentIndex: currentIndex,
      unselectedItemColor: AppColors.blackTextColor,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: veryBoldSize14Text(Theme.of(context).colorScheme.secondary).copyWith(fontSize: 12),
      unselectedLabelStyle: veryBoldSize14Text().copyWith(fontSize: 12),
      selectedItemColor: Theme.of(context).colorScheme.secondary,
      selectedFontSize: 12,
      onTap: (int currentIndex) {
        StoreProvider.dispatch<AppState>(
          context,
          BottomNavAction(currentCookBottomNavIndex: currentIndex),
        );
      },
      items: <BottomNavigationBarItem>[
        bottomNavItem(
          assetSvgPath: kitchenIconSvgPath,
          context: context,
          labelText: 'My Kitchen',
        ),
        bottomNavItem(
          assetSvgPath: ordersIconSvgPath,
          context: context,
          labelText: 'Orders',
        ),
        bottomNavItem(
          assetSvgPath: preOrdersIconSvgPath,
          context: context,
          labelText: 'Pre-orders',
        ),
        bottomNavItem(
          assetSvgPath: helpIconSvgPath,
          context: context,
          labelText: 'Help',
        ),
      ],
    );
  }
}

BottomNavigationBarItem bottomNavItem({
  required BuildContext context,
  required String assetSvgPath,
  required String labelText,
}) {
  return BottomNavigationBarItem(
    icon: Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: SvgPicture.asset(
        assetSvgPath,
      ),
    ),
    label: labelText,
    activeIcon: Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: SvgPicture.asset(
        assetSvgPath,
        color: Theme.of(context).colorScheme.secondary,
      ),
    ),
  );
}

final List<Widget> cookScreens = <Widget>[
  const MyKitchenPage(),
  const OrdersPage(),
  const PreOrdersPage(),
  const HelpPage(),
];
