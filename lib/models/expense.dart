import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {food, travel, leisure, work}

// here we declare a enum in which we define categories 
// which are used for selecting cateogory in chart 

const categoryIcons= {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

// here  we create a blue print (class) for accepting some data from user 

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category; 

// this is a getter for getting for date in list of expenses
  String get formattedDate {
    return formatter.format(date);
  }
}
