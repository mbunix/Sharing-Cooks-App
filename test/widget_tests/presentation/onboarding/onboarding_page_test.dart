import 'package:flutter_test/flutter_test.dart';
import 'package:sharing_cooks/domain/value_objects/app_strings.dart';
import 'package:sharing_cooks/domain/value_objects/app_widget_keys.dart';
import 'package:sharing_cooks/presentation/onboarding/onboarding_page.dart';

import '../../../mocks/test_helpers.dart';

void main() {
  testWidgets('OnboardingPage renders correctly', (WidgetTester tester) async {
    await buildTestWidget(
      tester: tester,
      widget: const OnboardingPage(),
    );

    final Finder onboardingTourActionButton =
        find.byKey(primaryActionButtonKey);

    expect(onboardingTourActionButton, findsOneWidget);
    expect(find.text(onboardingTourSliderBodyTextOne), findsOneWidget);

    // await tester.tap(onboardingTourActionButton);
    // await tester.pumpAndSettle(const Duration(seconds: 10));

    // expect(find.text(onboardingTourSliderBodyTextTwo), findsOneWidget);
  });
}
