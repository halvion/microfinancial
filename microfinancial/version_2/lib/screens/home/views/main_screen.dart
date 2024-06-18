
// import 'dart:math';

// import 'package:expense_repository/expense_repository.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';


// class MainScreen extends StatelessWidget {
//   final List<Expense> expenses;
//   const MainScreen(this.expenses, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         Container(
//                           width: 50,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.yellow[700]
//                           ),
//                         ),
//                         Icon(
//                           CupertinoIcons.person_fill,
//                           color: Colors.yellow[800],
//                         )
//                       ],
//                     ),
//                     const SizedBox(width: 8,),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                             color: Theme.of(context).colorScheme.outline
//                           ),
//                         ),
//                         Text(
//                           "John Doe",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Theme.of(context).colorScheme.onBackground
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.settings))
//               ],
//             ),
//             const SizedBox(height: 20,),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.width / 2,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Theme.of(context).colorScheme.primary,
//                     Theme.of(context).colorScheme.secondary,
//                     Theme.of(context).colorScheme.tertiary,
//                   ],
//                   transform: const GradientRotation(pi / 4),
//                 ),
//                 borderRadius: BorderRadius.circular(25),
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 4,
//                     color: Colors.grey.shade300,
//                     offset: const Offset(5, 5)
//                   )
//                 ]
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Total Balance',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   const Text(
//                     '\$ 4800.00',
//                     style: TextStyle(
//                       fontSize: 40,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               width: 25,
//                               height: 25,
//                               decoration: const BoxDecoration(
//                                 color: Colors.white30,
//                                 shape: BoxShape.circle
//                               ),
//                               child: const Center(
//                                 child: Icon(
//                                   CupertinoIcons.arrow_down,
//                                   size: 12,
//                                   color: Colors.greenAccent,
//                                 )
//                               ),
//                             ),
//                             const SizedBox(width: 8),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Income',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w400
//                                   ),
//                                 ),
//                                 Text(
//                                   '€ 2500.00',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               width: 25,
//                               height: 25,
//                               decoration: const BoxDecoration(
//                                 color: Colors.white30,
//                                 shape: BoxShape.circle
//                               ),
//                               child: const Center(
//                                 child: Icon(
//                                   CupertinoIcons.arrow_down,
//                                   size: 12,
//                                   color: Colors.red,
//                                 )
//                               ),
//                             ),
//                             const SizedBox(width: 8),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Expenses',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w400
//                                   ),
//                                 ),
//                                 Text(
//                                   '€ 800.00',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 40),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Transactions',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Theme.of(context).colorScheme.onBackground,
//                     fontWeight: FontWeight.bold
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
                    
//                   },
//                   child: Text(
//                     'View All',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Theme.of(context).colorScheme.outline,
//                       fontWeight: FontWeight.w400
//                     ),
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: expenses.length,
//                 itemBuilder: (context, int i) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 16.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(12)
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Container(
//                                       width: 50,
//                                       height: 50,
//                                       decoration: BoxDecoration(
//                                         color: Color(expenses[i].category.color),
//                                         shape: BoxShape.circle
//                                       ),
//                                     ),
//                                     Image.asset(
//                                       'assets/${expenses[i].category.icon}.png',
//                                       scale: 2,
//                                       color: Colors.white,
//                                     )
//                                   ],
//                                 ),
//                                 const SizedBox(width: 12),
//                                 Text(
//                                   expenses[i].category.name,
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Theme.of(context).colorScheme.onBackground,
//                                     fontWeight: FontWeight.w500
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Text(
//                                   "\$${expenses[i].amount}.00",
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Theme.of(context).colorScheme.onBackground,
//                                     fontWeight: FontWeight.w400
//                                   ),
//                                 ),
//                                 Text(
//                                   DateFormat('dd/MM/yyyy').format(expenses[i].date),
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Theme.of(context).colorScheme.outline,
//                                     fontWeight: FontWeight.w400
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 }
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'dart:math';

// import 'package:expense_repository/expense_repository.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:micro_finance/screens/add_expense/views/add_expense.dart';

// class MainScreen extends StatefulWidget {
//   final List<Expense> expenses;
//   const MainScreen(this.expenses, {super.key});

//   @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
//   double totalBalance = 4800.00;

//   @override
//   void initState() {
//     super.initState();
//     _calculateTotalBalance();
//   }

//   void _calculateTotalBalance() {
//     double totalExpenses = widget.expenses.fold(0, (sum, expense) => sum + expense.amount.toDouble());
//     setState(() {
//       totalBalance -= totalExpenses;
//     });
//   }

//   void _navigateAndAddExpense(BuildContext context) async {
//     final newExpense = await Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => const AddExpense()),
//     );

//     if (newExpense != null && newExpense is Expense) {
//       setState(() {
//         totalBalance -= newExpense.amount.toDouble();
//         widget.expenses.add(newExpense);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Row(
//                   children: [
//                     Stack(
//                       alignment: Alignment.center,
//                       children: [
//                         Container(
//                           width: 50,
//                           height: 50,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Colors.yellow[700],
//                           ),
//                         ),
//                         Icon(
//                           CupertinoIcons.person_fill,
//                           color: Colors.yellow[800],
//                         )
//                       ],
//                     ),
//                     const SizedBox(width: 8),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Welcome!",
//                           style: TextStyle(
//                             fontSize: 12,
//                             fontWeight: FontWeight.w600,
//                             color: Theme.of(context).colorScheme.outline,
//                           ),
//                         ),
//                         Text(
//                           "John Doe",
//                           style: TextStyle(
//                             fontSize: 18,
//                             fontWeight: FontWeight.bold,
//                             color: Theme.of(context).colorScheme.onBackground,
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//                 IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.settings)),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Container(
//               width: MediaQuery.of(context).size.width,
//               height: MediaQuery.of(context).size.width / 2,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     Theme.of(context).colorScheme.primary,
//                     Theme.of(context).colorScheme.secondary,
//                     Theme.of(context).colorScheme.tertiary,
//                   ],
//                   transform: const GradientRotation(pi / 4),
//                 ),
//                 borderRadius: BorderRadius.circular(25),
//                 boxShadow: [
//                   BoxShadow(
//                     blurRadius: 4,
//                     color: Colors.grey.shade300,
//                     offset: const Offset(5, 5),
//                   )
//                 ],
//               ),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text(
//                     'Total Balance',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.white,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   Text(
//                     '\$ ${totalBalance.toStringAsFixed(2)}',
//                     style: const TextStyle(
//                       fontSize: 40,
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Container(
//                               width: 25,
//                               height: 25,
//                               decoration: const BoxDecoration(
//                                 color: Colors.white30,
//                                 shape: BoxShape.circle,
//                               ),
//                               child: const Center(
//                                 child: Icon(
//                                   CupertinoIcons.arrow_down,
//                                   size: 12,
//                                   color: Colors.greenAccent,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 8),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Income',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 Text(
//                                   '€ 2500.00',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                         Row(
//                           children: [
//                             Container(
//                               width: 25,
//                               height: 25,
//                               decoration: const BoxDecoration(
//                                 color: Colors.white30,
//                                 shape: BoxShape.circle,
//                               ),
//                               child: const Center(
//                                 child: Icon(
//                                   CupertinoIcons.arrow_down,
//                                   size: 12,
//                                   color: Colors.red,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(width: 8),
//                             const Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   'Expenses',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 Text(
//                                   '€ 800.00',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             const SizedBox(height: 40),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   'Transactions',
//                   style: TextStyle(
//                     fontSize: 16,
//                     color: Theme.of(context).colorScheme.onBackground,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     _navigateAndAddExpense(context); // Navigate to AddExpense screen
//                   },
//                   child: Text(
//                     'View All',
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Theme.of(context).colorScheme.outline,
//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: widget.expenses.length,
//                 itemBuilder: (context, int i) {
//                   return Padding(
//                     padding: const EdgeInsets.only(bottom: 16.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(16.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Row(
//                               children: [
//                                 Stack(
//                                   alignment: Alignment.center,
//                                   children: [
//                                     Container(
//                                       width: 50,
//                                       height: 50,
//                                       decoration: BoxDecoration(
//                                         color: Color(widget.expenses[i].category.color),
//                                         shape: BoxShape.circle,
//                                       ),
//                                     ),
//                                     Image.asset(
//                                       'assets/${widget.expenses[i].category.icon}.png',
//                                       scale: 2,
//                                       color: Colors.white,
//                                     )
//                                   ],
//                                 ),
//                                 const SizedBox(width: 12),
//                                 Text(
//                                   widget.expenses[i].category.name,
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Theme.of(context).colorScheme.onBackground,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: [
//                                 Text(
//                                   "\$${widget.expenses[i].amount}.00",
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Theme.of(context).colorScheme.onBackground,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 Text(
//                                   DateFormat('dd/MM/yyyy').format(widget.expenses[i].date),
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     color: Theme.of(context).colorScheme.outline,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:math';

import 'package:expense_repository/expense_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:micro_finance/screens/add_expense/views/add_expense.dart'; // Adjust the import according to your project structure

class MainScreen extends StatefulWidget {
  final List<Expense> expenses;
  const MainScreen(this.expenses, {super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  double totalBalance = 4800.00;
  double initialBalance = 4800.00; // To keep track of the initial balance

  @override
  void initState() {
    super.initState();
    _calculateTotalBalance();
  }

  void _calculateTotalBalance() {
    double totalExpenses = widget.expenses.fold(0, (sum, expense) => sum + expense.amount.toDouble());
    setState(() {
      totalBalance = initialBalance - totalExpenses;
    });
  }

  void _navigateAndAddExpense(BuildContext context) async {
    final newExpense = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddExpense()),
    );

    if (newExpense != null && newExpense is Expense) {
      setState(() {
        widget.expenses.add(newExpense);
        totalBalance -= newExpense.amount.toDouble();
      });
    }
  }

  void _setBalance(double newBalance) {
    setState(() {
      initialBalance = newBalance;
      _calculateTotalBalance();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow[700],
                          ),
                        ),
                        Icon(
                          CupertinoIcons.person_fill,
                          color: Colors.yellow[800],
                        )
                      ],
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).colorScheme.outline,
                          ),
                        ),
                        Text(
                          "John Doe",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                IconButton(onPressed: () {}, icon: const Icon(CupertinoIcons.settings)),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.tertiary,
                  ],
                  transform: const GradientRotation(pi / 4),
                ),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey.shade300,
                    offset: const Offset(5, 5),
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Total Balance',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    '\$ ${totalBalance.toStringAsFixed(2)}',
                    style: const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            TextEditingController balanceController = TextEditingController();

                            return AlertDialog(
                              title: const Text('Set Balance'),
                              content: TextField(
                                controller: balanceController,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(hintText: 'Enter new balance'),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    final newBalance = double.tryParse(balanceController.text);
                                    if (newBalance != null) {
                                      _setBalance(newBalance);
                                      Navigator.of(context).pop();
                                    }
                                  },
                                  child: const Text('Set Balance'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      child: const Text('Set Balance'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontSize: 16,
                    color: Theme.of(context).colorScheme.onBackground,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // View All Transactions
                  },
                  child: Text(
                    'View All',
                    style: TextStyle(
                      fontSize: 14,
                      color: Theme.of(context).colorScheme.outline,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: widget.expenses.length,
                itemBuilder: (context, int i) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Color(widget.expenses[i].category.color),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    Image.asset(
                                      'assets/${widget.expenses[i].category.icon}.png',
                                      scale: 2,
                                      color: Colors.white,
                                    )
                                  ],
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  widget.expenses[i].category.name,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.onBackground,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  "\$${widget.expenses[i].amount}.00",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.onBackground,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  DateFormat('dd/MM/yyyy').format(widget.expenses[i].date),
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.outline,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
