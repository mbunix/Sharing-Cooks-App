import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_enums.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: ordersString,
        centerTitle: false,
        showBackButton: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: Row(
              children: <Widget>[
                Text(
                  showingAllString,
                  style: veryBoldSize14Text(AppColors.blackTextColor),
                ),
                verySmallHorizontalSizedBox,
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: AppColors.greyTextColor,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                mediumVerticalSizedBox,
                const OrderItemWidget(
                  orderStatus: OrderStatus.accepted,
                ),
                const OrderItemWidget(
                  orderStatus: OrderStatus.rejected,
                ),
                const OrderItemWidget(
                  orderStatus: OrderStatus.accepted,
                ),
                const OrderItemWidget(
                  orderStatus: OrderStatus.delivered,
                ),
                const OrderItemWidget(
                  orderStatus: OrderStatus.requested,
                ),
                const OrderItemWidget(
                  orderStatus: OrderStatus.accepted,
                ),
                mediumVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(archiveIconSvgPath),
                        smallHorizontalSizedBox,
                        Text(
                          archivedOrdersString,
                          style: normalSize14Text(AppColors.greyTextColor),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: AppColors.greyTextColor,
                    ),
                  ],
                ),
                mediumVerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.35,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.5,
                    ),
                  ),
                ),
                mediumVerticalSizedBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OrderItemWidget extends StatelessWidget {
  final OrderStatus orderStatus;

  const OrderItemWidget({super.key, required this.orderStatus});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        size15VerticalSizedBox,
        Row(
          children: <Widget>[
            Container(
              height: 72,
              width: 72,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(meal1PngPath),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            size15HorizontalSizedBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width - 135,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'R00045, 4 items',
                        style: veryBoldSize15Text(
                          AppColors.secondaryTextColor,
                        ),
                      ),
                      Text(
                        orderStatus == OrderStatus.accepted
                            ? orderAcceptedString
                            : orderStatus == OrderStatus.rejected
                                ? orderRejectedString
                                : orderStatus == OrderStatus.delivered
                                    ? orderDeliveredString
                                    : orderRequestedString,
                        style: veryBoldSize15Text(
                          orderStatus == OrderStatus.rejected
                              ? AppColors.redColor
                              : orderStatus == OrderStatus.accepted ||
                                      orderStatus == OrderStatus.delivered
                                  ? AppColors.greenColor
                                  : AppColors.lightBlueColor,
                        ),
                      ),
                    ],
                  ),
                ),
                smallVerticalSizedBox,
                Text(
                  'x3 Chicken shawarma, x1 Chapati beans',
                  style: TextStyle(
                    color: AppColors.secondaryTextColor.withOpacity(0.5),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                smallVerticalSizedBox,
                Row(
                  children: <Widget>[
                    SvgPicture.asset(timeIconSvgPath),
                    verySmallHorizontalSizedBox,
                    Text(
                      'Deliver by 2023-01-23 at 12PM',
                      style: normalSize14Text(
                        AppColors.secondaryTextColor.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        size15VerticalSizedBox,
        Container(
          width: double.infinity,
          height: 0.35,
          decoration: BoxDecoration(
            color: AppColors.blackTextColor.withOpacity(
              0.5,
            ),
          ),
        ),
      ],
    );
  }
}
