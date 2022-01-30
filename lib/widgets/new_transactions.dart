import 'package:flutter/material.dart';

class newTransaction extends StatelessWidget {
  
 final titleController=TextEditingController();
  final amountController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: "Title"),
                      controller: titleController,
                      // onChanged: (val) {
                      //   // titleInput = val;
                      // },
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: "Amount"),
                      controller: amountController,
                      // onChanged: (val) {
                      //   amountInput = val;
                      // },
                    ),
                    FlatButton(
                      onPressed: () {
                        // print("hello");
                        print(titleController.text);
                        
                        // print(amountInput);
                      },
                      child: Text(
                        "Add Transaction",
                        style: TextStyle(color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
            );
  }
}