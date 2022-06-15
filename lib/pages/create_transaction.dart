import 'package:flutter/material.dart';
import 'package:money_manager_app/components/expense_income_form.dart';
import 'package:money_manager_app/components/transfer_form.dart';
import 'package:money_manager_app/constants/theme.dart';
import 'package:intl/intl.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:money_manager_app/models/standart_transaction.dart';
import 'package:money_manager_app/models/transaction.dart';
import 'package:money_manager_app/models/transaction_list.dart';

class CreateTransaction extends StatefulWidget {
  const CreateTransaction({Key? key}) : super(key: key);

  @override
  State<CreateTransaction> createState() => _CreateTransactionState();
}

class _CreateTransactionState extends State<CreateTransaction> {
  TransactionType transactionType = TransactionType.expense;

  void changeTransactionType(TransactionType tType) {
    transactionType = tType;
  }

  Widget _renderTopTransactionCategoryButtons(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: transactionType == TransactionType.income
                ? ElevatedButton(
                    onPressed: () {
                      changeTransactionType(TransactionType.income);
                    },
                    child: const Text('Income'),
                  )
                : OutlinedButton(
                    onPressed: () {
                      setState(() {
                        changeTransactionType(TransactionType.income);
                      });
                    },
                    child: const Text('Income'),
                  ),
          ),
        ),
        Expanded(
          child: transactionType == TransactionType.expense
              ? ElevatedButton(
                  onPressed: () {
                    setState(() {
                      changeTransactionType(TransactionType.expense);
                    });
                  },
                  child: const Text('Expense'),
                )
              : OutlinedButton(
                  onPressed: () {
                    setState(() {
                      changeTransactionType(TransactionType.expense);
                    });
                  },
                  child: const Text('Expense'),
                ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10),
            child: transactionType == TransactionType.transfer
                ? ElevatedButton(
                    onPressed: () {
                      setState(() {
                        changeTransactionType(TransactionType.transfer);
                      });
                    },
                    child: const Text('Transfer'),
                  )
                : OutlinedButton(
                    onPressed: () {
                      setState(() {
                        changeTransactionType(TransactionType.transfer);
                      });
                    },
                    child: const Text('Transfer'),
                  ),
          ),
        ),
      ],
    );
  }

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
              _renderTopTransactionCategoryButtons(context),
              const SizedBox(height: 20),
              transactionType == TransactionType.transfer
                  ? TransferForm()
                  : ExpenseIncomeForm(
                      onSubmit: (date, time, account, transactionCategory,
                          amount, description, name, trType) {
                        TransactionList.addTransaction(
                          StandartTransaction(
                            amount: amount,
                            dateTime: DateTime.parse('$date $time'),
                            name: name,
                            note: description,
                            transactionType: trType,
                            account: account,
                            transactionCategory: transactionCategory,
                          ),
                        );
                      },
                    ),
            ],
          ),
        ),
      )),
    );
  }
}
