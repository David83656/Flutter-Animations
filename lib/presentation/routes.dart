import 'package:flutter/material.dart';
import 'package:flutter_application_todoapp/presentation/pages/calendar_page.dart';
import 'package:flutter_application_todoapp/presentation/pages/home_page.dart';
import 'package:flutter_application_todoapp/presentation/pages/tasks_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'home': (_) => HomePage(),
  'calendar': (_) => CalendarPage(),
  'tasks': (_) => TasksPage(),
  'task': (_) => TasksPage()
};
