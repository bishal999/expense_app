import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class userTtansaction extends StatefulWidget {
  const userTtansaction({ Key? key }) : super(key: key);

  @override
  _userTtansactionState createState() => _userTtansactionState();
}

class _userTtansactionState extends State<userTtansaction> {

final List<Transaction>_usertransactions=[
    Transaction(
      id: "t1",
      title: "Books",
      amount: 30,
     date: DateTime.now(),
    ),
    Transaction(
      id: "t2",
      title: "Clothes",
      amount: 50,
      date: DateTime.now(),
    ),
  ];

  void _addNewTransaction(String txTitle,double txAmount)
  {
    final newTx=Transaction(
      title: txTitle,
      amount: txAmount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        newTransaction(),
           transactionList(_usertransactions),
      ],
    );
  }
}