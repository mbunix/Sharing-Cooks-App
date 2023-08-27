import 'package:async_redux/async_redux.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sharing_cooks/app_service.dart';
import 'package:sharing_cooks/application/redux/actions/auth/register_user_action.dart';
import 'package:sharing_cooks/application/redux/actions/flags/app_flags.dart';
import 'package:sharing_cooks/application/redux/states/app_state.dart';
import 'package:sharing_cooks/application/redux/view_models/app_state_view_model.dart';
import 'package:sharing_cooks/application/services/helpers.dart';
import 'package:sharing_cooks/authentication_scaffold.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/constants.dart';
import 'package:sharing_cooks/presentation/core/theme/text_themes.dart';
import 'package:sharing_cooks/presentation/core/theme/theme.dart';
import 'package:sharing_cooks/presentation/core/widgets/buttons.dart';
import 'package:sharing_cooks/presentation/core/widgets/inputs/custom_text_input_field.dart';
import 'package:sharing_cooks/presentation/core/widgets/platform_loader.dart';
import 'package:sharing_cooks/presentation/core/widgets/spaces.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? firstName;

  String? lastName;

  String? email;

  final TextEditingController emailInputController = TextEditingController();

  String? pin;
  TextEditingController pinController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final AppService appService = context.read<AppService>();
    final bool activateActionButton = pin != null &&
        pin!.isNotEmpty &&
        firstName != null &&
        firstName!.isNotEmpty &&
        lastName != null &&
        lastName!.isNotEmpty &&
        email != null &&
        email!.isNotEmpty;
    return AuthScaffold(
      title: 'Please Register Your Account',
      message: 'Add your account details here',
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'First name',
                      style: boldSize14Text(Theme.of(context).primaryColor),
                      textAlign: TextAlign.center,
                    ),
                    smallVerticalSizedBox,
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.22,
                      child: CustomTextInputField(
                        // customFillColor: AppColors.inputFillColor,
                        // borderColor: AppColors.lightGreyColor,
                        // focusedBorderColor: AppColors.greyTextColor,
                        autovalidateMode: AutovalidateMode.disabled,
                        onChanged: (String? value) {
                          setState(() {
                            firstName = value;
                          });
                        },
                        validator: (String? val) {
                          final String value = val as String;
                          if (value.isEmpty) {
                            return 'Field is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                verySmallHorizontalSizedBox,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Last name',
                      style: boldSize14Text(Theme.of(context).primaryColor),
                      textAlign: TextAlign.center,
                    ),
                    smallVerticalSizedBox,
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2.22,
                      child: CustomTextInputField(
                        // customFillColor: AppColors.inputFillColor,
                        // borderColor: AppColors.lightGreyColor,
                        // focusedBorderColor: AppColors.greyTextColor,
                        autovalidateMode: AutovalidateMode.disabled,
                        onChanged: (String? value) {
                          setState(() {
                            lastName = value;
                          });
                        },
                        validator: (String? val) {
                          final String value = val as String;
                          if (value.isEmpty) {
                            return 'Field is required';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
            largeVerticalSizedBox,
            Text(
              'Email Address',
              style: boldSize14Text(Theme.of(context).primaryColor),
              textAlign: TextAlign.center,
            ),
            smallVerticalSizedBox,
            CustomTextInputField(
              // customFillColor: AppColors.inputFillColor,
              // borderColor: AppColors.lightGreyColor,
              // focusedBorderColor: AppColors.greyTextColor,
              hintText: 'Enter email',
              autovalidateMode: AutovalidateMode.disabled,
              onChanged: (String? value) {
                setState(() {
                  email = value;
                });
              },
              validator: (String? val) {
                final String value = val as String;
                if (value.isEmpty) {
                  return 'Email is required';
                }

                if (!RegExp(
                  r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$",
                ).hasMatch(value)) {
                  return 'Enter a valid Email';
                }
                return null;
              },
            ),
            largeVerticalSizedBox,
            Text(
              'Password',
              style: boldSize14Text(Theme.of(context).primaryColor),
              textAlign: TextAlign.center,
            ),
            smallVerticalSizedBox,
            CustomTextInputField(
              // customFillColor: AppColors.inputFillColor,
              // borderColor: AppColors.lightGreyColor,
              // focusedBorderColor: AppColors.greyTextColor,
              obscureText: true,
              validator: (String? val) {
                final String value = val as String;
                if (value.isEmpty) {
                  return 'Password is required';
                }

                if (value.length < 5) {
                  return 'Password should be more than 4 characters';
                }
                return null;
              },
              hintText: 'Enter password',
              autovalidateMode: AutovalidateMode.disabled,
              onChanged: (String? val) {
                setState(() {
                  pin = val;
                });
              },
            ),
            largeVerticalSizedBox,
          ],
        ),
      ),
      actionButton: StoreConnector<AppState, AppStateViewModel>(
        converter: (Store<AppState> store) =>
            AppStateViewModel.fromStore(store),
        builder: (_, AppStateViewModel vm) {
          return vm.wait.isWaitingFor(registerFlag)
              ? const PlatformLoader()
              : PrimaryButton(
                  text: 'Sign Up',
                  onPressed: () {
                    final bool? isFormValid = _formKey.currentState?.validate();
                    if (isFormValid != null &&
                        isFormValid &&
                        activateActionButton) {
                      //StoreProvider.dispatch<AppState>(
                      //context,
                      //UpdateOnboardingStateAction(
                      // registerPayload: RegisterPayload(
                      //  firstName: firstName,
                      //  lastName: lastName,
                      //   email: email,
                      //  phoneNumber: phoneNumber,
                      // password: pin,
                      // idNumber: idNumber,
                      //),
                      ///),
                      // );
                      StoreProvider.dispatch<AppState>(
                        context,
                        RegisterUserAction(
                          email: email ?? '',
                          username: '$firstName.$lastName',
                          password: pin ?? '',
                          appService: appService,
                          successCallback: () {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: const Text(
                                    'Successfully registered user',
                                  ),
                                  duration: const Duration(
                                    seconds: kLongSnackBarDuration,
                                  ),
                                  action: dismissSnackBar(
                                    closeString,
                                    AppColors.whiteColor,
                                    context,
                                  ),
                                ),
                              );
                          },
                          errorCallback: (String? reason) {
                            ScaffoldMessenger.of(context)
                              ..hideCurrentSnackBar()
                              ..showSnackBar(
                                SnackBar(
                                  content: Text(
                                    reason ?? defaultUserFriendlyMessage,
                                  ),
                                  duration: const Duration(
                                    seconds: kLongSnackBarDuration,
                                  ),
                                  action: dismissSnackBar(
                                    closeString,
                                    AppColors.whiteColor,
                                    context,
                                  ),
                                ),
                              );
                          },
                        ),
                      );
                    }
                  },
                );
        },
      ),
      actionDescription: RichText(
        text: TextSpan(
          text: 'Already have an account?',
          style: normalSize13Text(
            AppColors.greyTextColor,
          ),
          children: <TextSpan>[
            TextSpan(
              text: ' Log In',
              style: normalSize13Text(
                Theme.of(context).primaryColor,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).pushReplacementNamed(
                    AppRoutes.loginPage,
                    arguments: email,
                  );
                },
            ),
          ],
        ),
      ),
    );
  }
}
