import 'package:flutter/material.dart';
import 'package:money_manager_app/constants/theme.dart';

class CreateTransaction extends StatefulWidget {
  const CreateTransaction({Key? key}) : super(key: key);

  @override
  State<CreateTransaction> createState() => _CreateTransactionState();
}

class _CreateTransactionState extends State<CreateTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: primaryHorizontalMargin,
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Income'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Expense'),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Transfer'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Date'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: TextField(
                        decoration: InputDecoration(hintText: 'Time'),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              DropdownButtonFormField(
                decoration: const InputDecoration(hintText: 'Account'),
                items: const <DropdownMenuItem<Object>>[
                  DropdownMenuItem(
                    value: 'cash',
                    child: Text('Cash'),
                  ),
                  DropdownMenuItem(
                    value: 'rekening_bca',
                    child: Text('Rekening BCA'),
                  ),
                ],
                onChanged: (_) {},
              ),
              const SizedBox(height: 5),
              DropdownButtonFormField(
                decoration: const InputDecoration(hintText: 'Category'),
                items: const <DropdownMenuItem<Object>>[
                  DropdownMenuItem(
                    value: 'transportation',
                    child: Text('Transportation'),
                  ),
                  DropdownMenuItem(
                    value: 'food_and_drinks',
                    child: Text('Food and Drinks'),
                  ),
                ],
                onChanged: (_) {},
              ),
              const SizedBox(height: 5),
              const TextField(
                decoration: InputDecoration(hintText: 'Amount'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 5),
              const TextField(
                maxLines: 4,
                decoration: InputDecoration(hintText: 'Note'),
              ),
              const SizedBox(height: 35),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Text('Save Transaction'),
                    )),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      child: Text('Back'),
                    )),
              ),
            ],
          ),
        ),
      )),
    );
  }
}