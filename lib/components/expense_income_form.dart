import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:money_manager_app/constants/enums.dart';
import 'package:money_manager_app/models/account.dart';
import 'package:money_manager_app/data/account_list.dart';
import 'package:money_manager_app/models/transaction_category.dart';
import 'package:money_manager_app/data/transaction_category_list.dart';

class ExpenseIncomeForm extends StatefulWidget {
  Function(
      Account account,
      TransactionCategory transactionCategory,
      double amount,
      String description,
      String name,
      DateTime dateTime) onSubmit;

  ExpenseIncomeForm({Key? key, required this.onSubmit}) : super(key: key);

  @override
  State<ExpenseIncomeForm> createState() => _ExpenseIncomeFormState();
}

class _ExpenseIncomeFormState extends State<ExpenseIncomeForm> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  DateTime? dt;
  Account? selectedAccount;
  TransactionCategory? transactionCategory;

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      _timeController.text =
          pickedTime == null ? '' : pickedTime.format(context);
      fillDt();
    });
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015),
      lastDate: DateTime(2050),
    );
    setState(() {
      _dateController.text =
          pickedDate == null ? '' : DateFormat('yyyy-MM-dd').format(pickedDate);
      fillDt();
    });
  }

  void fillDt() {
    if (_dateController.text.isNotEmpty && _timeController.text.isNotEmpty) {
      dt = DateFormat('yyyy-MM-d hh:mm a')
          .parse('${_dateController.text} ${_timeController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: TextField(
                  controller: _dateController,
                  onTap: () {
                    _selectDate(context);
                  },
                  decoration: const InputDecoration(hintText: 'Date'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: TextField(
                  controller: _timeController,
                  onTap: () {
                    _selectTime(context);
                  },
                  decoration: const InputDecoration(hintText: 'Time'),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        DropdownButtonFormField(
          decoration: const InputDecoration(hintText: 'Account'),
          items: AccountList.accountsList.map((Account account) {
            return DropdownMenuItem<Account>(
              value: account,
              child: Text(account.name),
            );
          }).toList(),
          onChanged: (account) {
            selectedAccount = account as Account;
          },
        ),
        const SizedBox(height: 5),
        DropdownButtonFormField(
          onChanged: (tCategory) {
            transactionCategory = tCategory as TransactionCategory;
          },
          decoration: const InputDecoration(hintText: 'Category'),
          items: TransactionCategoryList.transactionCategoriesList
              .map(
                (TransactionCategory transactionCategory) =>
                    DropdownMenuItem<TransactionCategory>(
                  child: Text(transactionCategory.name),
                  value: transactionCategory,
                ),
              )
              .toList(),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _nameController,
          decoration: const InputDecoration(hintText: 'Name'),
        ),
        const SizedBox(height: 5),
        TextField(
          controller: _amountController,
          decoration: const InputDecoration(hintText: 'Amount'),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 5),
        TextField(
          maxLines: 4,
          controller: _noteController,
          decoration: const InputDecoration(hintText: 'Note'),
        ),
        const SizedBox(height: 35),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              onPressed: () {
                widget.onSubmit(
                  selectedAccount!,
                  transactionCategory!,
                  double.tryParse(_amountController.text) ?? 0,
                  _noteController.text,
                  _nameController.text,
                  dt!,
                );
                Navigator.pop(context);
              },
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
    );
  }
}
