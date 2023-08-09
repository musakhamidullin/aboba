import 'package:aboba/application/routes.dart';
import 'package:aboba/presentation/shared/leading.dart';
import 'package:aboba/presentation/themes/theme.dart';
import 'package:aboba/presentation/widgets/search_input.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../data/mocks/mock_service.dart';
import '../../domain/repository/strings_repository.dart';
import '../widgets/profiles.dart';

@RoutePage()
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final StringsRepositoryImp _stringsRepositoryImp =
      StringsRepositoryImp(MockService());

  var _items = [];

  @override
  void initState() {
    super.initState();

    _items = _stringsRepositoryImp.getStrings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const LeadingWidget(),
        centerTitle: true,
        title: const Text('Чат'),
      ),
      body: Padding(
        padding: ThemeApp.horizontalPadding / 2,
        child: Column(
          children: [
            ThemeApp.paddingWidget,
            const SearchWidget(),
            ThemeApp.paddingWidget,
            Expanded(
              child: ListView.builder(
                  itemCount: _items.length,
                  shrinkWrap: true,
                  itemBuilder: (context, i) => GestureDetector(
                      onTap: () {
                        context.router.push(DetailChatRoute(name: _items[i]));
                      },
                      child: const ProfileWidget())),
            )
          ],
        ),
      ),
    );
  }
}
