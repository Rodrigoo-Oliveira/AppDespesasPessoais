import 'dart:math';
import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  

  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = [
    Transaction(id: 't1',
      title: '#01',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(id: 't2',
      title: '#02',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't3',
      title: '#03',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't4',
      title: '#04',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't5',
      title: '#05',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't6',
      title: '#06',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't7',
      title: '#07',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't8',
      title: '#08',
      value: 211.30,
      date: DateTime.now(),
    ),
    Transaction(id: 't9',
      title: '#09',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];

  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
      id: Random().nextDouble().toString(),
      title: title,
      value: value,
      date: DateTime.now(),
    );
  

    setState(() {
      _transactions.add(newTransaction);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TransactionList(_transactions),
        TransactionForm(_addTransaction),
      ],
    );
  }
}