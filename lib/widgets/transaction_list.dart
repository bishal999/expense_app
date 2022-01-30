import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';



class transactionList extends StatelessWidget {
  final List<Transaction>transactions;
  transactionList(this.transactions);
  
  @override
  Widget build(BuildContext context) {
    return  Column(
              children: transactions.map(
                (tx) {
                  return Card(
                      child: Row(
                    children: <Widget>[
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                        child: Text(
                          '\$${tx.amount}',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple)),
                        padding: EdgeInsets.all(20),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            DateFormat.yMMMMEEEEd().format(tx.date),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ));
                },
              ).toList(),
            );
  }
}