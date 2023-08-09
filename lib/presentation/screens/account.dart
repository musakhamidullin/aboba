import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


@RoutePage()
class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
     return const Center(
      child: Text('Account route'),
    );
  }
}