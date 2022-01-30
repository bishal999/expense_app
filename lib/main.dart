import 'package:expense_app/widgets/user_transactions.dart';

import './widgets/new_transactions.dart';

import './widgets/transaction_list.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  

  // String titleInput = '';
  // String amountInput = '';
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Expenses"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body: Column(
//  mainAxisAlignment: MainAxisAlignment.start,

          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Container(
              width: double.infinity,
              child: Card(
                child: Text("Chart"),
                elevation: 5,
              ),
            ),
            userTtansaction(),
          ],
        ),
      ),
    );
  }
}



