import 'package:aboba/presentation/themes/theme.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: theme.primaryColorDark.withOpacity(0.08),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        elevation: 20,
        centerTitle: true,
        title: Text(
          'Баланс',
          style:
              theme.textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.arrow_back),
        actions: [
          const Icon(
            Icons.info_outline_rounded,
            size: 32,
            color: primary,
          ),
          ThemeApp.paddingWidget
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.only(bottom: 40),
          children: [
            ThemeApp.doublePaddingWidget,
            Text(
              'Заполните информацию  о вашей карте',
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            ThemeApp.doublePaddingWidget,
            Padding(
              padding: ThemeApp.horizontalPadding,
              child: Form(
                key: key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('Имя Фамилия'),
                    ),
                    ThemeApp.dividedByTwoPaddingWidget,
                    Card(
                      shadowColor: theme.primaryColorDark.withOpacity(0.1),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                              return 'Поле не может быть пустым и должно содержать алфавитные символы';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            hintText: 'Введите имя и фамилию',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    ThemeApp.dividedByTwoPaddingWidget,
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text('Номер карты'),
                    ),
                    ThemeApp.dividedByTwoPaddingWidget,
                    Card(
                      shadowColor: theme.primaryColorDark.withOpacity(0.1),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^\d+$').hasMatch(value)) {
                              return 'Поле не может быть пустым и должно содержать числа';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            hintText: 'xxx xxx xxx 322',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    ThemeApp.dividedByTwoPaddingWidget,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 190,
                          child: Card(
                            shadowColor:
                                theme.primaryColorDark.withOpacity(0.1),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty || value.length > 4) {
                                    return 'Поле не может быть пустым и должно содержать дату';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: '07/25',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 190,
                          child: Card(
                            shadowColor:
                                theme.primaryColorDark.withOpacity(0.1),
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty ||
                                      !RegExp(r'^\d+$').hasMatch(value) ||
                                      value.length > 3) {
                                    return 'Поле не может быть пустым и должно содержать CVV код';
                                  }
                                  return null;
                                },
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  hintText: 'CVV',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ThemeApp.dividedByTwoPaddingWidget,
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text('Сумма пополнения баланса'),
                    ),
                    ThemeApp.dividedByTwoPaddingWidget,
                    Card(
                      shadowColor: theme.primaryColorDark.withOpacity(0.1),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          validator: (value) {
                            if (value!.isEmpty || !RegExp(r'^\d+$').hasMatch(value)) {
                              return 'Поле не должно быть пустым и должно содержать большие числа)';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: CheckboxListTile(
                value: false,
                onChanged: (value) {},
                title: const Text('Запомнить данные?'),
              ),
            ),
            Container(
                padding: ThemeApp.horizontalPadding,
                height: 56,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (key.currentState!.validate()) {}
                  },
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(10),
                    shadowColor: MaterialStatePropertyAll(
                        theme.primaryColor.withOpacity(0.5)),
                  ),
                  child: const Text('Продолжить'),
                ))
          ],
        ),
      ),
    );
  }
}
