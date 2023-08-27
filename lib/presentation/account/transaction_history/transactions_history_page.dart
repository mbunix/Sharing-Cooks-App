import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/custom_app_bar.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';

class TransactionsHistoryPage extends StatelessWidget {
  const TransactionsHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: myWalletString,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: <Widget>[
                smallVerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      balanceString,
                      style: veryBoldSize32Text(AppColors.blackTextColor)
                          .copyWith(fontSize: 40),
                    ),
                    Text(
                      '-45',
                      style: veryBoldSize32Text(AppColors.redColor)
                          .copyWith(fontSize: 40),
                    ),
                  ],
                ),
                size15VerticalSizedBox,
                SizedBox(
                  height: 40,
                  child: ElevatedButton(
                    key: primaryActionButtonKey,
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 32.0,
                      ),
                      child: Text(payNowString),
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '+550',
                  date: '2023-01-23 12:24PM',
                  status: 'Delivery accepted',
                ),
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '+550',
                  date: '2023-01-23 12:24PM',
                  status: 'Delivery accepted',
                ),
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '+750',
                  date: '2023-01-23 12:24PM',
                  status: 'Delivery accepted',
                ),
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '-55',
                  date: '2023-01-23 12:24PM',
                  status: 'Cancelled order',
                ),
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '-150',
                  date: '2023-01-23 12:24PM',
                  status: 'Delivery rejected',
                ),
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '+550',
                  date: '2023-01-23 12:24PM',
                  status: 'Delivery accepted',
                ),
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '+550',
                  date: '2023-01-23 12:24PM',
                  status: 'Delivery accepted',
                ),
                const TransactionHistoryItem(
                  codeName: 'R00045 Winnie Atkins',
                  amount: '+550',
                  date: '2023-01-23 12:24PM',
                  status: 'Delivery accepted',
                ),
               
                smallVerticalSizedBox,
                Container(
                  width: double.infinity,
                  height: 0.35,
                  decoration: BoxDecoration(
                    color: AppColors.blackTextColor.withOpacity(
                      0.5,
                    ),
                  ),
                ),
                size15VerticalSizedBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        SvgPicture.asset(archiveIconSvgPath),
                        smallHorizontalSizedBox,
                        Text(
                          '2022 December',
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
                mediumVerticalSizedBox,
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TransactionHistoryItem extends StatelessWidget {
  final String codeName;
  final String amount;
  final String date;
  final String status;

  const TransactionHistoryItem({
    super.key,
    required this.codeName,
    required this.amount,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        smallVerticalSizedBox,
        Container(
          width: double.infinity,
          height: 0.35,
          decoration: BoxDecoration(
            color: AppColors.blackTextColor.withOpacity(
              0.5,
            ),
          ),
        ),
        smallVerticalSizedBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              codeName,
              style: veryBoldSize14Text(AppColors.blackTextColor),
            ),
            Text(
              amount,
              style: veryBoldSize14Text(
                amount.contains('-')
                    ? AppColors.redColor
                    : Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
        smallVerticalSizedBox,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              date,
              style: veryBoldSize14Text(AppColors.blackTextColor),
            ),
            Text(
              status,
              style: veryBoldSize14Text(
                status.contains('rejected') || status.contains('Cancelled')
                    ? AppColors.redColor
                    : Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
