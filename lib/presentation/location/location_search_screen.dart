import 'package:flutter/material.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';

class LocationSearchScreen extends StatefulWidget {
  const LocationSearchScreen({super.key});

  @override
  State<LocationSearchScreen> createState() => _LocationSearchScreenState();
}

class _LocationSearchScreenState extends State<LocationSearchScreen> {
  void placeAutoComplete(String query) {
    // Uri uri = Uri.http(
    //   'maps.googleapis.com',
    //   'maps/api/place/autocomplete/json',
    //   <String, String>{
    //     'input': query,
    //     'key': dotenv.env['GOOGLE_MAPS_API_KEY'] ?? ''
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.pureWhiteColor,
        elevation: 0,
        centerTitle: false,
        leading: InkWell(
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          child: const Icon(
            Icons.arrow_back,
            color: AppColors.blackTextColor,
          ),
        ),
        title: CustomTextFieldWithBorder(
          // controller: searchController,
          hintText: 'Search location',
          // onFieldSubmitted: (_) async {
          //   final Map<String, dynamic> place =
          //       await LocationService()
          //           .getPlace(searchController.text);
          //   goToPlace(place);
          // },
          suffixIcon: Padding(
            padding: const EdgeInsets.only(
              right: 4.0,
            ),
            child: Icon(
              Icons.search,
              color: AppColors.greyTextColor.withOpacity(0.5),
            ),
          ),
          borderColor: AppColors.greyTextColor.withOpacity(0.5),
          customFillColor: Colors.transparent,
          onChanged: (String val) {},
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.4),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Yaya Center, Kilimani, Nairobi',
                    style: veryBoldSize16Text(AppColors.secondaryTextColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
