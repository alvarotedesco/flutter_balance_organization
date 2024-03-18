import 'package:accordion/accordion.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage> {
  void onPressed() => print( 'TODO: Implementar tela de despesas');

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Accordion(
              headerBackgroundColor: const Color.fromRGBO(112, 48, 160, 1),
              headerBackgroundColorOpened:
              const Color.fromRGBO(112, 48, 160, 1),
              contentBackgroundColor: const Color.fromRGBO(59, 1, 103, 1),
              rightIcon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
              headerPadding: const EdgeInsets.all(5),
              headerBorderRadius: 0,
              contentBorderRadius: 0,
              paddingListTop: 0,
              paddingListBottom: 0,
              paddingListHorizontal: 10,
              children: [
                AccordionSection(
                  contentBorderWidth: 0,
                  header: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Despesas Fixas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'R\$ 1230,00',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  content: const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Despesa 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Accordion(
              headerBackgroundColor: const Color.fromRGBO(113, 0, 0, 1),
              headerBackgroundColorOpened: const Color.fromRGBO(113, 0, 0, 1),
              contentBackgroundColor: const Color.fromRGBO(63, 0, 0, 1),
              rightIcon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
              headerPadding: const EdgeInsets.all(5),
              headerBorderRadius: 0,
              contentBorderRadius: 0,
              paddingListTop: 0,
              paddingListBottom: 0,
              paddingListHorizontal: 10,
              children: [
                AccordionSection(
                  contentBorderWidth: 0,
                  header: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Despesas Variadas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'R\$ 1521,36',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  content: const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Despesa 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Accordion(
              headerBackgroundColor: const Color.fromRGBO(184, 83, 0, 1),
              headerBackgroundColorOpened:
              const Color.fromRGBO(184, 83, 0, 1),
              contentBackgroundColor: const Color.fromRGBO(130, 50, 0, 1),
              rightIcon: const Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
              headerPadding: const EdgeInsets.all(5),
              headerBorderRadius: 0,
              contentBorderRadius: 0,
              paddingListTop: 0,
              paddingListBottom: 0,
              paddingListHorizontal: 10,
              children: [
                AccordionSection(
                  contentBorderWidth: 0,
                  header: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Receitas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'R\$ 2351,25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  content: const Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Receita 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  'Adicionar lançamento',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                MaterialButton(
                  color: const Color.fromRGBO(15, 129, 129, 1),
                  shape: const CircleBorder(),
                  onPressed: onPressed,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            Container(
              color: const Color.fromRGBO(0, 54, 120, 1),
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total Acumulado',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'R\$ 8000,25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Lucro',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'R\$ 1202,25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Gastável',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'R\$ 2351,25',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}