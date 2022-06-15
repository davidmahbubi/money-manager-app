import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransferForm extends StatefulWidget {
  @override
  State<TransferForm> createState() => _TransferFormState();
}

class _TransferFormState extends State<TransferForm> {
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  Future<void> _selectTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    setState(() {
      _timeController.text =
          pickedTime == null ? '' : pickedTime.format(context);
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
          pickedDate == null ? '' : DateFormat('dd-MM-yyyy').format(pickedDate);
    });
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
          decoration: const InputDecoration(hintText: 'Source Account'),
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
          decoration: const InputDecoration(hintText: 'Destination Account'),
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
        const TextField(
          decoration: InputDecoration(hintText: 'Name'),
        ),
        const SizedBox(height: 5),
        const TextField(
          decoration: InputDecoration(hintText: 'Amount'),
          keyboardType: TextInputType.number,
        ),
        const SizedBox(height: 5),
        const TextField(
          decoration: InputDecoration(hintText: 'Transfer Fee'),
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
              onPressed: () {
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
