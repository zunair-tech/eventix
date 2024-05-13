import 'package:Eventix/presentation/favorite_event_screen/widgets/favorite_event_screen.dart';
import 'package:Eventix/presentation/splash_screen/splash_screen.dart';
import 'package:Eventix/presentation/splash_screen/binding/splash_binding.dart';
import 'package:Eventix/presentation/choose_location_screen/choose_location_screen.dart';
import 'package:Eventix/presentation/choose_location_screen/binding/choose_location_binding.dart';
import 'package:Eventix/presentation/onboarding_screen/onboarding_screen.dart';
import 'package:Eventix/presentation/onboarding_screen/binding/onboarding_binding.dart';
import 'package:Eventix/presentation/login_sign_up_screen/login_sign_up_screen.dart';
import 'package:Eventix/presentation/login_sign_up_screen/binding/login_sign_up_binding.dart';
import 'package:Eventix/presentation/login_screen/login_screen.dart';
import 'package:Eventix/presentation/login_screen/binding/login_binding.dart';
import 'package:Eventix/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:Eventix/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:Eventix/presentation/choose_method_screen/choose_method_screen.dart';
import 'package:Eventix/presentation/choose_method_screen/binding/choose_method_binding.dart';
import 'package:Eventix/presentation/enter_email_screen/enter_email_screen.dart';
import 'package:Eventix/presentation/enter_email_screen/binding/enter_email_binding.dart';
import 'package:Eventix/presentation/enter_phone_screen/enter_phone_screen.dart';
import 'package:Eventix/presentation/enter_phone_screen/binding/enter_phone_binding.dart';
import 'package:Eventix/presentation/verification_screen/verification_screen.dart';
import 'package:Eventix/presentation/verification_screen/binding/verification_binding.dart';
import 'package:Eventix/presentation/new_password_screen/new_password_screen.dart';
import 'package:Eventix/presentation/new_password_screen/binding/new_password_binding.dart';
import 'package:Eventix/presentation/success_screen/success_screen.dart';
import 'package:Eventix/presentation/success_screen/binding/success_binding.dart';
import 'package:Eventix/presentation/loading_personalization_screen/loading_personalization_screen.dart';
import 'package:Eventix/presentation/loading_personalization_screen/binding/loading_personalization_binding.dart';
import 'package:Eventix/presentation/home_container_screen/home_container_screen.dart';
import 'package:Eventix/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:Eventix/presentation/event_details_screen/event_details_screen.dart';
import 'package:Eventix/presentation/event_details_screen/binding/event_details_binding.dart';
import 'package:Eventix/presentation/nearby_events_screen/nearby_events_screen.dart';
import 'package:Eventix/presentation/nearby_events_screen/binding/nearby_events_binding.dart';
import 'package:Eventix/presentation/nearby_events_map_view_screen/nearby_events_map_view_screen.dart';
import 'package:Eventix/presentation/nearby_events_map_view_screen/binding/nearby_events_map_view_binding.dart';
import 'package:Eventix/presentation/contact_organizer_screen/contact_organizer_screen.dart';
import 'package:Eventix/presentation/contact_organizer_screen/binding/contact_organizer_binding.dart';
import 'package:Eventix/presentation/select_time_screen/select_time_screen.dart';
import 'package:Eventix/presentation/select_time_screen/binding/select_time_binding.dart';
import 'package:Eventix/presentation/select_ticket_type_screen/select_ticket_type_screen.dart';
import 'package:Eventix/presentation/select_ticket_type_screen/binding/select_ticket_type_binding.dart';
import 'package:Eventix/presentation/checkout_screen/checkout_screen.dart';
import 'package:Eventix/presentation/checkout_screen/binding/checkout_binding.dart';
import 'package:Eventix/presentation/payment_method_one_screen/payment_method_one_screen.dart';
import 'package:Eventix/presentation/payment_method_one_screen/binding/payment_method_one_binding.dart';
import 'package:Eventix/presentation/order_complete_screen/order_complete_screen.dart';
import 'package:Eventix/presentation/order_complete_screen/binding/order_complete_binding.dart';
import 'package:Eventix/presentation/favorite_events_tab_container_screen/favorite_events_tab_container_screen.dart';
import 'package:Eventix/presentation/favorite_events_tab_container_screen/binding/favorite_events_tab_container_binding.dart';
import 'package:Eventix/presentation/search_screen/search_screen.dart';
import 'package:Eventix/presentation/search_screen/binding/search_binding.dart';
import 'package:Eventix/presentation/search_result_screen/search_result_screen.dart';
import 'package:Eventix/presentation/search_result_screen/binding/search_result_binding.dart';
import 'package:Eventix/presentation/search_result_map_view_screen/search_result_map_view_screen.dart';
import 'package:Eventix/presentation/search_result_map_view_screen/binding/search_result_map_view_binding.dart';
import 'package:Eventix/presentation/past_tickets_tab_container_screen/past_tickets_tab_container_screen.dart';
import 'package:Eventix/presentation/past_tickets_tab_container_screen/binding/past_tickets_tab_container_binding.dart';
import 'package:Eventix/presentation/ticket_detail_screen/ticket_detail_screen.dart';
import 'package:Eventix/presentation/ticket_detail_screen/binding/ticket_detail_binding.dart';
import 'package:Eventix/presentation/direction_screen/direction_screen.dart';
import 'package:Eventix/presentation/direction_screen/binding/direction_binding.dart';
import 'package:Eventix/presentation/ticket_one_screen/ticket_one_screen.dart';
import 'package:Eventix/presentation/ticket_one_screen/binding/ticket_one_binding.dart';
import 'package:Eventix/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:Eventix/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:Eventix/presentation/choose_location_one_screen/choose_location_one_screen.dart';
import 'package:Eventix/presentation/choose_location_one_screen/binding/choose_location_one_binding.dart';
import 'package:Eventix/presentation/notification_screen/notification_screen.dart';
import 'package:Eventix/presentation/notification_screen/binding/notification_binding.dart';
import 'package:Eventix/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:Eventix/presentation/payment_method_screen/binding/payment_method_binding.dart';
import 'package:Eventix/presentation/new_payment_method_screen/new_payment_method_screen.dart';
import 'package:Eventix/presentation/new_payment_method_screen/binding/new_payment_method_binding.dart';
import 'package:Eventix/presentation/organizer_profile_about_tab_container_screen/organizer_profile_about_tab_container_screen.dart';
import 'package:Eventix/presentation/organizer_profile_about_tab_container_screen/binding/organizer_profile_about_tab_container_binding.dart';
import 'package:get/get.dart';

import '../presentation/follow_organizer_screen/binding/follow_organizer_binding.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String chooseLocationScreen = '/choose_location_screen';

  static const String onboardingScreen = '/onboarding_screen';

  static const String loginSignUpScreen = '/login_sign_up_screen';

  static const String loginScreen = '/login_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String chooseMethodScreen = '/choose_method_screen';

  static const String enterEmailScreen = '/enter_email_screen';

  static const String enterPhoneScreen = '/enter_phone_screen';

  static const String verificationScreen = '/verification_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String successScreen = '/success_screen';

  static const String favoriteEventScreen = '/favorite_event_screen';

  static const String loadingPersonalizationScreen =
      '/loading_personalization_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String eventDetailsScreen = '/event_details_screen';

  static const String nearbyEventsScreen = '/nearby_events_screen';

  static const String nearbyEventsMapViewScreen =
      '/nearby_events_map_view_screen';

  static const String contactOrganizerScreen = '/contact_organizer_screen';

  static const String selectTimeScreen = '/select_time_screen';

  static const String selectTicketTypeScreen = '/select_ticket_type_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String paymentMethodOneScreen = '/payment_method_one_screen';

  static const String orderCompleteScreen = '/order_complete_screen';

  static const String favoriteEventsPage = '/favorite_events_page';

  static const String favoriteEventsTabContainerScreen =
      '/favorite_events_tab_container_screen';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String searchResultMapViewScreen =
      '/search_result_map_view_screen';

  static const String ticketPage = '/ticket_page';

  static const String pastTicketsPage = '/past_tickets_page';

  static const String pastTicketsTabContainerScreen =
      '/past_tickets_tab_container_screen';

  static const String ticketDetailScreen = '/ticket_detail_screen';

  static const String directionScreen = '/direction_screen';

  static const String ticketOneScreen = '/ticket_one_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String chooseLocationOneScreen = '/choose_location_one_screen';

  static const String notificationScreen = '/notification_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String newPaymentMethodScreen = '/new_payment_method_screen';

  static const String organizerProfileEventsPage =
      '/organizer_profile_events_page';

  static const String organizerProfilePastPage = '/organizer_profile_past_page';

  static const String organizerProfileAboutPage =
      '/organizer_profile_about_page';

  static const String organizerProfileAboutTabContainerScreen =
      '/organizer_profile_about_tab_container_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: chooseLocationScreen,
      page: () => ChooseLocationScreen(),
      bindings: [
        ChooseLocationBinding(),
      ],
    ),
    GetPage(
      name: onboardingScreen,
      page: () => OnboardingScreen(),
      bindings: [
        OnboardingBinding(),
      ],
    ),
    GetPage(
      name: loginSignUpScreen,
      page: () => LoginSignUpScreen(),
      bindings: [
        LoginSignUpBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: chooseMethodScreen,
      page: () => ChooseMethodScreen(),
      bindings: [
        ChooseMethodBinding(),
      ],
    ),
    GetPage(
      name: enterEmailScreen,
      page: () => EnterEmailScreen(),
      bindings: [
        EnterEmailBinding(),
      ],
    ),
    GetPage(
      name: enterPhoneScreen,
      page: () => EnterPhoneScreen(),
      bindings: [
        EnterPhoneBinding(),
      ],
    ),
    GetPage(
      name: verificationScreen,
      page: () => VerificationScreen(),
      bindings: [
        VerificationBinding(),
      ],
    ),
    GetPage(
      name: newPasswordScreen,
      page: () => NewPasswordScreen(),
      bindings: [
        NewPasswordBinding(),
      ],
    ),
    GetPage(
      name: successScreen,
      page: () => SuccessScreen(),
      bindings: [
        SuccessBinding(),
      ],
    ),
    GetPage(
      name: favoriteEventScreen,
      page: () => FavoriteEventScreen(),
      bindings: [
        FavoriteEventBinding(),
      ],
    ),
    GetPage(
      name: loadingPersonalizationScreen,
      page: () => LoadingPersonalizationScreen(),
      bindings: [
        LoadingPersonalizationBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: eventDetailsScreen,
      page: () => EventDetailsScreen(),
      bindings: [
        EventDetailsBinding(),
      ],
    ),
    GetPage(
      name: nearbyEventsScreen,
      page: () => NearbyEventsScreen(),
      bindings: [
        NearbyEventsBinding(),
      ],
    ),
    GetPage(
      name: nearbyEventsMapViewScreen,
      page: () => NearbyEventsMapViewScreen(),
      bindings: [
        NearbyEventsMapViewBinding(),
      ],
    ),
    GetPage(
      name: contactOrganizerScreen,
      page: () => ContactOrganizerScreen(),
      bindings: [
        ContactOrganizerBinding(),
      ],
    ),
    GetPage(
      name: selectTimeScreen,
      page: () => SelectTimeScreen(),
      bindings: [
        SelectTimeBinding(),
      ],
    ),
    GetPage(
      name: selectTicketTypeScreen,
      page: () => SelectTicketTypeScreen(),
      bindings: [
        SelectTicketTypeBinding(),
      ],
    ),
    GetPage(
      name: checkoutScreen,
      page: () => CheckoutScreen(),
      bindings: [
        CheckoutBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodOneScreen,
      page: () => PaymentMethodOneScreen(),
      bindings: [
        PaymentMethodOneBinding(),
      ],
    ),
    GetPage(
      name: orderCompleteScreen,
      page: () => OrderCompleteScreen(),
      bindings: [
        OrderCompleteBinding(),
      ],
    ),
    GetPage(
      name: favoriteEventsTabContainerScreen,
      page: () => FavoriteEventsTabContainerScreen(),
      bindings: [
        FavoriteEventsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: searchResultScreen,
      page: () => SearchResultScreen(),
      bindings: [
        SearchResultBinding(),
      ],
    ),
    GetPage(
      name: searchResultMapViewScreen,
      page: () => SearchResultMapViewScreen(),
      bindings: [
        SearchResultMapViewBinding(),
      ],
    ),
    GetPage(
      name: pastTicketsTabContainerScreen,
      page: () => PastTicketsTabContainerScreen(),
      bindings: [
        PastTicketsTabContainerBinding(),
      ],
    ),
    GetPage(
      name: ticketDetailScreen,
      page: () => TicketDetailScreen(),
      bindings: [
        TicketDetailBinding(),
      ],
    ),
    GetPage(
      name: directionScreen,
      page: () => DirectionScreen(),
      bindings: [
        DirectionBinding(),
      ],
    ),
    GetPage(
      name: ticketOneScreen,
      page: () => TicketOneScreen(),
      bindings: [
        TicketOneBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: chooseLocationOneScreen,
      page: () => ChooseLocationOneScreen(),
      bindings: [
        ChooseLocationOneBinding(),
      ],
    ),
    GetPage(
      name: notificationScreen,
      page: () => NotificationScreen(),
      bindings: [
        NotificationBinding(),
      ],
    ),
    GetPage(
      name: paymentMethodScreen,
      page: () => PaymentMethodScreen(),
      bindings: [
        PaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: newPaymentMethodScreen,
      page: () => NewPaymentMethodScreen(),
      bindings: [
        NewPaymentMethodBinding(),
      ],
    ),
    GetPage(
      name: organizerProfileAboutTabContainerScreen,
      page: () => OrganizerProfileAboutTabContainerScreen(),
      bindings: [
        OrganizerProfileAboutTabContainerBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
