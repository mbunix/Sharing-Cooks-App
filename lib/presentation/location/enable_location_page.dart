import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sharing_cooks/application/redux/actions/get_current_location_action.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/view_models/misc_state_view_model.dart';
import 'package:sharing_cooks/application/services/asset_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';
import 'dart:async';

class EnableLocationPage extends StatefulWidget {
  const EnableLocationPage({super.key});

  @override
  State<EnableLocationPage> createState() => _EnableLocationPageState();
}

class _EnableLocationPageState extends State<EnableLocationPage> {
  final ImagePicker imagePicker = ImagePicker();
  XFile? photo;
  TextEditingController searchController = TextEditingController();
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markers = <Marker>{};
  Set<Polygon> polygons = <Polygon>{};
  List<LatLng> polygonLatLngs = <LatLng>[];

  int polygonIdCounter = 1;

  CameraPosition _currentLocation = const CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  // Marker _currentLocationMarker = const Marker(
  //   markerId: MarkerId('kMarkerId'),
  //   position: LatLng(
  //     37.43296265331129,
  //     -122.08832357078792,
  //   ),
  // );

  void setMarker(LatLng point) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      StoreProvider.dispatch(
        context,
        GetCurrentLocationAction(context: context),
      );
    });
    setState(() {
      markers.add(
        Marker(
          markerId: const MarkerId('marker'),
          position: point,
        ),
      );
      // _currentLocationMarker = ;
    });
  }

  void setPolygon() {
    final String polygonIdVal = 'polygon_$polygonIdCounter';
    polygonIdCounter++;

    polygons.add(
      Polygon(
        polygonId: PolygonId(polygonIdVal),
        points: polygonLatLngs,
        strokeWidth: 2,
        fillColor: Colors.transparent,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setMarker(const LatLng(37.42796133580664, -122.085749655962));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: StoreConnector<AppState, MiscStateViewModel>(
            converter: (Store<AppState> store) =>
                MiscStateViewModel.fromStore(store),
            onInit: (Store<AppState> store) => store.dispatch(
              GetCurrentLocationAction(context: context),
            ),
            builder: (BuildContext context, MiscStateViewModel vm) {
              // final Position? currentGeoPosition =
              //     vm.miscState?.currentGeoPosition?['position'];

              // if (currentGeoPosition != null) {
              //   // setState(() {
              //     _currentLocationMarker = Marker(
              //       markerId: const MarkerId('kMarkerId'),
              //       position: LatLng(
              //         currentGeoPosition.latitude,
              //         currentGeoPosition.longitude,
              //       ),
              //     );
              //     _currentLocation = CameraPosition(
              //       target: LatLng(
              //         currentGeoPosition.latitude,
              //         currentGeoPosition.longitude,
              //       ),
              //       zoom: 14.4746,
              //     );
              //   // });
              // }
              return Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  children: <Widget>[
                    largeVerticalSizedBox,
                    Text(
                      deliveryLocationString,
                      style: heavyBoldSize22Text(AppColors.blackTextColor),
                    ),
                    tinyVerticalSizedBox,
                    Text(
                      deliverMyOrdersToString,
                      style: boldSize13Text(AppColors.blackTextColor)
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    // largeVerticalSizedBox,
                    // if (vm.wait.isWaitingFor(locationFlag))
                    //   Padding(
                    //     padding: EdgeInsets.only(
                    //       top: MediaQuery.of(context).size.height / 3.5,
                    //     ),
                    //     child: const PlatformLoader(),
                    //   )
                    // else
                    //   InkWell(
                    //     onTap: () {
                    //       Navigator.pushNamed(
                    //         context,
                    //         AppRoutes.locationSearchScreen,
                    //       );
                    //     },
                    //     child: Container(
                    //       padding: const EdgeInsets.all(12),
                    //       width: double.infinity,
                    //       decoration: BoxDecoration(
                    //         border: Border.all(
                    //           color: AppColors.greyTextColor.withOpacity(0.5),
                    //         ),
                    //         borderRadius: BorderRadius.circular(4),
                    //       ),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //         children: <Widget>[
                    //           Text(
                    //             chooseLocationString,
                    //             style: veryBoldSize16Text(
                    //               AppColors.blackTextColor.withOpacity(
                    //                 0.5,
                    //               ),
                    //             ),
                    //           ),
                    //           Icon(
                    //             Icons.search,
                    //             color: AppColors.blackTextColor.withOpacity(
                    //               0.5,
                    //             ),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    largeVerticalSizedBox,
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 3.5,
                      child: GoogleMap(
                        markers: markers,
                        polygons: polygons,
                        initialCameraPosition: _currentLocation,
                        onMapCreated: (GoogleMapController controller) {
                          _controller.complete(controller);
                        },
                        onTap: (LatLng latLong) {
                          setState(() {
                            // polygonLatLngs.add(latLong);
                            // setPolygon();
                            _currentLocation = CameraPosition(
                              target: latLong,
                              zoom: 14.4746,
                            );
                          });
                        },
                      ),
                    ),
                    largeVerticalSizedBox,
                    CustomTextFieldWithBorder(
                      hintText: streetOrRoadString,
                      onFieldSubmitted: (_) async {},
                      hintStyle: veryBoldSize16Text(
                        AppColors.blackTextColor.withOpacity(
                          0.5,
                        ),
                      ),
                      borderColor: AppColors.greyTextColor.withOpacity(0.5),
                      customFillColor: Colors.transparent,
                      onChanged: (String val) {},
                    ),
                    mediumVerticalSizedBox,
                    CustomTextFieldWithBorder(
                      hintText: apartmentOrBuildingNameString,
                      onFieldSubmitted: (_) async {},
                      hintStyle: veryBoldSize16Text(
                        AppColors.blackTextColor.withOpacity(
                          0.5,
                        ),
                      ),
                      borderColor: AppColors.greyTextColor.withOpacity(0.5),
                      customFillColor: Colors.transparent,
                      onChanged: (String val) {},
                    ),
                    mediumVerticalSizedBox,
                    CustomTextFieldWithBorder(
                      hintText: doorNumberOrNameString,
                      onFieldSubmitted: (_) async {},
                      hintStyle: veryBoldSize16Text(
                        AppColors.blackTextColor.withOpacity(
                          0.5,
                        ),
                      ),
                      borderColor: AppColors.greyTextColor.withOpacity(0.5),
                      customFillColor: Colors.transparent,
                      onChanged: (String val) {},
                    ),
                    mediumVerticalSizedBox,
                    Container(
                      height: 48,
                      padding: const EdgeInsets.all(12),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.greyTextColor.withOpacity(0.5),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              deliverySpotPhotoString,
                              style: veryBoldSize16Text(
                                AppColors.blackTextColor.withOpacity(0.5),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Tooltip(
                                triggerMode: TooltipTriggerMode.tap,
                                preferBelow: false,
                                message:
                                    'This is to help the delivery person identify your building on arrival',
                                child: SvgPicture.asset(toolTipIconSvgPath),
                              ),
                              tinyHorizontalSizedBox,
                              InkWell(
                                onTap: () async {
                                  photo = await imagePicker.pickImage(
                                    source: ImageSource.camera,
                                  );
                                },
                                child: SvgPicture.asset(cameraIconSvgPath), 
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    largeVerticalSizedBox,
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        key: primaryActionButtonKey,
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            AppRoutes.phoneVerificationPage,
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: const Text(getStartedString),
                      ),
                    ),
                    largeVerticalSizedBox,
                    InkWell(
                      onTap: () => Navigator.pushNamedAndRemoveUntil(
                        context,
                        AppRoutes.homePage,
                        (Route<dynamic> route) => false,
                      ),
                      child: Text(
                        skipForNowString,
                        style: boldSize14Text(Theme.of(context).primaryColor),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Future<void> goToPlace(
    Map<String, dynamic> place,
    // double lat,
    // double lng,
    // Map<String, dynamic> boundsNe,
    // Map<String, dynamic> boundsSw,
  ) async {
    final double lat = place['geometry']['location']['lat'];
    final double lng = place['geometry']['location']['lng'];

    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(lat, lng), zoom: 12),
      ),
    );

    // controller.animateCamera(
    //   CameraUpdate.newLatLngBounds(
    //     CameraPosition(target: t)
    // LatLngBounds(
    //   southwest: LatLng(boundsSw['lat'], boundsSw['lng']),
    //   northeast: LatLng(boundsNe['lat'], boundsNe['lng']),
    // ),
    // 25
    // ),
    // );
    setMarker(LatLng(lat, lng));
  }
}
