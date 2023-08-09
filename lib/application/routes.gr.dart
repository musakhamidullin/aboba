// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'routes.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    MailTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MailScreen(),
      );
    },
    ChatTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatScreen(),
      );
    },
    AccountTab.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainPage(),
      );
    },
    DetailChatRoute.name: (routeData) {
      final args = routeData.argsAs<DetailChatRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: DetailChatPage(
          key: args.key,
          name: args.name,
        ),
      );
    },
    MailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MailPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountPage(),
      );
    },
    ChatRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ChatPage(),
      );
    },
  };
}

/// generated route for
/// [HomeScreen]
class HomeTab extends PageRouteInfo<void> {
  const HomeTab({List<PageRouteInfo>? children})
      : super(
          HomeTab.name,
          initialChildren: children,
        );

  static const String name = 'HomeTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MailScreen]
class MailTab extends PageRouteInfo<void> {
  const MailTab({List<PageRouteInfo>? children})
      : super(
          MailTab.name,
          initialChildren: children,
        );

  static const String name = 'MailTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatScreen]
class ChatTab extends PageRouteInfo<void> {
  const ChatTab({List<PageRouteInfo>? children})
      : super(
          ChatTab.name,
          initialChildren: children,
        );

  static const String name = 'ChatTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AccountScreen]
class AccountTab extends PageRouteInfo<void> {
  const AccountTab({List<PageRouteInfo>? children})
      : super(
          AccountTab.name,
          initialChildren: children,
        );

  static const String name = 'AccountTab';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [DetailChatPage]
class DetailChatRoute extends PageRouteInfo<DetailChatRouteArgs> {
  DetailChatRoute({
    Key? key,
    required String name,
    List<PageRouteInfo>? children,
  }) : super(
          DetailChatRoute.name,
          args: DetailChatRouteArgs(
            key: key,
            name: name,
          ),
          initialChildren: children,
        );

  static const String name = 'DetailChatRoute';

  static const PageInfo<DetailChatRouteArgs> page =
      PageInfo<DetailChatRouteArgs>(name);
}

class DetailChatRouteArgs {
  const DetailChatRouteArgs({
    this.key,
    required this.name,
  });

  final Key? key;

  final String name;

  @override
  String toString() {
    return 'DetailChatRouteArgs{key: $key, name: $name}';
  }
}

/// generated route for
/// [MailPage]
class MailRoute extends PageRouteInfo<void> {
  const MailRoute({List<PageRouteInfo>? children})
      : super(
          MailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ChatPage]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute({List<PageRouteInfo>? children})
      : super(
          ChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
