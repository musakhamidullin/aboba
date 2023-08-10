import 'package:aboba/presentation/shared/leading.dart';
import 'package:aboba/presentation/themes/theme.dart';
import 'package:flutter/material.dart';

class RecoverPage extends StatefulWidget {
  const RecoverPage({super.key});

  @override
  State<RecoverPage> createState() => _RecoverPageState();
}

class _RecoverPageState extends State<RecoverPage> {
  int index = 0;

  Map<int, int> map = {};

  @override
  void initState() {
    super.initState();

    map[0] = -1;

    map[1] = -1;

    map[2] = -1;

    map[3] = -1;
  }

  @override
  Widget build(BuildContext context) {
    if (index < 0) index = 0;

    if (index > 4) index = 4;

    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: primary[50],
      appBar: AppBar(
        leading: const LeadingWidget(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ThemeApp.doublePaddingWidget,
          Text(
            'Мы отправили вам СМС код',
            style: theme.textTheme.titleMedium!
                .copyWith(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 200,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    spreadRadius: 0,
                    blurRadius: 20,
                  )
                ],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Column(
              children: [
                ThemeApp.doublePaddingWidget,
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'На номер: ',
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: Colors.grey)),
                  TextSpan(
                      text: '+7 917 999-99-99',
                      style: theme.textTheme.titleMedium!
                          .copyWith(color: theme.primaryColor)),
                ])),
                ThemeApp.doublePaddingWidget,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 90,
                      width: 85,
                      decoration: BoxDecoration(
                          color: map[0] != -1 ? Colors.green[50] : Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 8,
                                offset: const Offset(0, 6))
                          ]),
                      child: Center(
                        child: Text(
                          map[0] != -1 ? map[0].toString() : '',
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 85,
                      decoration: BoxDecoration(
                          color: map[1] != -1 ? Colors.green[50] : Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 8,
                                offset: const Offset(0, 6))
                          ]),
                      child: Center(
                        child: Text(
                          map[1] != -1 ? map[1].toString() : '',
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 85,
                      decoration: BoxDecoration(
                          color: map[2] != -1 ? Colors.green[50] : Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 8,
                                offset: const Offset(0, 6))
                          ]),
                      child: Center(
                        child: Text(
                          map[2] != -1 ? map[2].toString() : '',
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 85,
                      decoration: BoxDecoration(
                          color: map[3] != -1 ? Colors.green[50] : Colors.white,
                          borderRadius: BorderRadius.circular(24),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.08),
                                blurRadius: 8,
                                offset: const Offset(0, 6))
                          ]),
                      child: Center(
                        child: Text(
                          map[3] != -1 ? map[3].toString() : '',
                          style: theme.textTheme.displayMedium,
                        ),
                      ),
                    ),
                  ],
                ),
                ThemeApp.doublePaddingWidget,
                const Text(
                  'Повторная отправка будет возможна\nчерез: 56 секунд',
                  textAlign: TextAlign.center,
                ),
                ThemeApp.doublePaddingWidget,
                // keyboard
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 1;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 2;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '2',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 3;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '3',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ThemeApp.paddingWidget,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 4;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '4',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 5;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '5',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 6;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '6',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ThemeApp.paddingWidget,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 7;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '7',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 8;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '8',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 9;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '9',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    ThemeApp.paddingWidget,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 90,
                          width: 85,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              index++;
                              map[index - 1] = 0;
                            });
                          },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                '0',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: map[0] == -1
                              ? null
                              : () {
                                  setState(() {
                                    index--;
                                    map[index] = -1;
                                  });
                                },
                          child: Container(
                            height: 90,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                map[0] == -1 ? '' : '⌫',
                                style: theme.textTheme.displayMedium,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
