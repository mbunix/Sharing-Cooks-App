import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.completeOrderPage);
      },
      child: SvgPicture.asset(cartIconSvgPath),
    );
  }
}
