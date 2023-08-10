import 'package:aboba/presentation/themes/theme.dart';
import 'package:aboba/presentation/widgets/profiles.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../data/mocks/mock_service.dart';
import '../../domain/repository/strings_repository.dart';
import '../shared/leading.dart';

@RoutePage()
class DetailChatPage extends StatefulWidget {
  const DetailChatPage({super.key, required this.name});

  final String name;

  @override
  State<DetailChatPage> createState() => _DetailChatPageState();
}

class _DetailChatPageState extends State<DetailChatPage> {
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
    final theme = Theme.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        actions: [const Icon(Icons.more_vert), ThemeApp.paddingWidget],
        title: Column(
          children: [
            Text(widget.name),
            Text(
              'Офлайн: 3 часа',
              style: theme.textTheme.titleMedium!.copyWith(color: Colors.grey),
            ),
          ],
        ),
        centerTitle: true,
        leading: LeadingWidget(
          onTap: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: ThemeApp.horizontalPadding / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ColoredBox(
              color: primary[50]!,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Перейти в закал Доставка письма...'),
              ),
            ),
            ThemeApp.paddingWidget,
            Text('31 марта', style: theme.textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _items.take(2).length,
                itemBuilder: (context, i) => const ProfileWidget(),
              ),
            ),
            const Spacer(),
            Padding(
              padding: ThemeApp.horizontalPadding / 2,
              child: Row(
                children: [
                  const Icon(Icons.attach_file_rounded, color: Colors.grey,),
                  ThemeApp.paddingWidget,
                  const Icon(Icons.mic, color: Colors.grey),
                  ThemeApp.paddingWidget,
                  Text('Сообщение', style: theme.textTheme.bodyLarge!.copyWith(color: Colors.grey),),
                  const Spacer(),
                  const Icon(Icons.emoji_emotions_outlined, color: Colors.grey)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
