
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../presentation/screens/account.dart';
import '../presentation/screens/chat.dart';
import '../presentation/screens/detail_chat.dart';
import '../presentation/screens/home.dart';
import '../presentation/screens/mail.dart';
import '../presentation/screens/main_with_tabs.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MainRoute.page, path: '/', children: [
          AutoRoute(
            initial: true,
            page: ChatTab.page,
            path: 'chat',
            children: [
              AutoRoute(
                page: ChatRoute.page,
                path: '',
              ),
              AutoRoute(
                page: DetailChatRoute.page,
                path: '',
              ),
              RedirectRoute(path: '*', redirectTo: ''),
            ],
          ),
          AutoRoute(page: HomeTab.page, path: 'home', children: [
            AutoRoute(
                page: HomeRoute.page,
                path: '',
              ),
            RedirectRoute(path: '*', redirectTo: ''),
          ]),
          AutoRoute(
            page: MailTab.page,
            path: 'mail',
            children: [
              AutoRoute(
                page: MailRoute.page,
                path: '',
              ),
              RedirectRoute(path: '*', redirectTo: ''),
            ],
          ),
          
          AutoRoute(
            page: AccountTab.page,
            path: 'account',
            children: [
              AutoRoute(
                page: AccountRoute.page,
                path: '',
              ),
              RedirectRoute(path: '*', redirectTo: ''),
            ],
          ),
        ]),
      ];
}

@RoutePage(name: 'HomeTab')
class HomeScreen extends AutoRouter {
  const HomeScreen({super.key});
}

@RoutePage(name: 'MailTab')
class MailScreen extends AutoRouter {
  const MailScreen({super.key});
}

@RoutePage(name: 'ChatTab')
class ChatScreen extends AutoRouter {
  const ChatScreen({super.key});
}

@RoutePage(name: 'AccountTab')
class AccountScreen extends AutoRouter {
  const AccountScreen({super.key});
}
