import 'package:flutter/material.dart';
import 'package:sharing_cooks/login_page.dart';
import 'package:sharing_cooks/presentation/account/cook_profile/edit_cook_profile_page.dart';
import 'package:sharing_cooks/presentation/account/edit_account/edit_account_page.dart';
import 'package:sharing_cooks/presentation/account/transaction_history/transactions_history_page.dart';
import 'package:sharing_cooks/presentation/cart/complete_order_page.dart';
import 'package:sharing_cooks/presentation/custom_meal/custom_meal_page.dart';
import 'package:sharing_cooks/presentation/help/faqs/faqs_page.dart';
import 'package:sharing_cooks/presentation/help/privacy_policy/privacy_policy_page.dart';
import 'package:sharing_cooks/presentation/help/terms_of_service/terms_of_service_page.dart';
import 'package:sharing_cooks/presentation/home/home_page.dart';
import 'package:sharing_cooks/presentation/list_meal/list_meal_page.dart';
import 'package:sharing_cooks/presentation/location/enable_location_page.dart';
import 'package:sharing_cooks/presentation/location/location_search_screen.dart';
import 'package:sharing_cooks/presentation/meal_details/meal_details_page.dart';
import 'package:sharing_cooks/presentation/onboarding/cook/cook_onboarding_page.dart';
import 'package:sharing_cooks/presentation/otp_verification/otp_verification_page.dart';
import 'package:sharing_cooks/presentation/phone_verification/phone_verification_page.dart';
import 'package:sharing_cooks/presentation/onboarding/onboarding_page.dart';
import 'package:sharing_cooks/presentation/reviews/reviews_page.dart';
import 'package:sharing_cooks/presentation/router/routes.dart';
import 'package:sharing_cooks/register_page.dart';

class AppRouter {
  /// gets the current route based on the [RouteSettings]
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final dynamic args = settings.arguments;

    switch (settings.name) {
      case AppRoutes.onboardingPage:
        return MaterialPageRoute<OnboardingPage>(
          builder: (_) => const OnboardingPage(),
        );

      case AppRoutes.phoneVerificationPage:
        return MaterialPageRoute<PhoneVerificationPage>(
          builder: (_) => const PhoneVerificationPage(),
        );

      case AppRoutes.otpVerificationPage:
        return MaterialPageRoute<OTPVerificationPage>(
          builder: (_) => const OTPVerificationPage(),
        );

      case AppRoutes.homePage:
        return MaterialPageRoute<HomePage>(
          builder: (_) => const HomePage(),
        );
      case AppRoutes.enableLocationPage:
        return MaterialPageRoute<EnableLocationPage>(
          builder: (_) => const EnableLocationPage(),
        );
      case AppRoutes.customMealPage:
        return MaterialPageRoute<CustomMealPage>(
          builder: (_) => const CustomMealPage(),
        );
      case AppRoutes.mealDetailsPage:
        return MaterialPageRoute<MealDetailsPage>(
          builder: (_) => const MealDetailsPage(),
        );
      case AppRoutes.completeOrderPage:
        return MaterialPageRoute<CompleteOrderPage>(
          builder: (_) => const CompleteOrderPage(),
        );
      case AppRoutes.reviewsPage:
        return MaterialPageRoute<ReviewsPage>(
          builder: (_) => const ReviewsPage(),
        );
      case AppRoutes.locationSearchScreen:
        return MaterialPageRoute<LocationSearchScreen>(
          builder: (_) => const LocationSearchScreen(),
        );
      case AppRoutes.loginPage:
        return MaterialPageRoute<LoginPage>(
          builder: (_) => const LoginPage(),
        );
      case AppRoutes.registerPage:
        return MaterialPageRoute<RegisterPage>(
          builder: (_) => const RegisterPage(),
        );
      case AppRoutes.faqsPage:
        return MaterialPageRoute<FaqsPage>(
          builder: (_) => const FaqsPage(),
        );
      case AppRoutes.termsOfServicePage:
        return MaterialPageRoute<TermsOfServicePage>(
          builder: (_) => const TermsOfServicePage(),
        );
      case AppRoutes.privacyPolicyPage:
        return MaterialPageRoute<PrivacyPolicyPage>(
          builder: (_) => const PrivacyPolicyPage(),
        );
      case AppRoutes.transactionsHistoryPage:
        return MaterialPageRoute<TransactionsHistoryPage>(
          builder: (_) => const TransactionsHistoryPage(),
        );
      case AppRoutes.editAccountPage:
        return MaterialPageRoute<EditAccountPage>(
          builder: (_) => const EditAccountPage(),
        );

      // Cook
      case AppRoutes.cookOnboardingPage:
        return MaterialPageRoute<CookOnboardingPage>(
          builder: (_) => const CookOnboardingPage(),
        );
      case AppRoutes.editCookProfilePage:
        return MaterialPageRoute<EditCookProfilePage>(
          builder: (_) => const EditCookProfilePage(),
        );
      case AppRoutes.listMealPage:
        return MaterialPageRoute<ListMealPage>(
          builder: (_) => const ListMealPage(),
        );

      default:
        return MaterialPageRoute<OnboardingPage>(
          builder: (_) => const OnboardingPage(),
        );
    }
  }
}
