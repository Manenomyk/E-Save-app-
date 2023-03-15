import 'package:flutter/material.dart';
import './MyHeaderDrawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentPage = DrawerSection.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-save app'),
      ),
      body: Container(
        child: const Center(
          child: Text('Home page'),
        ),
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          menuitem(
            1,
            "Home",
            Icons.home,
            currentPage == DrawerSection.home ? true : false,
          ),
          menuitem(
            2,
            "Plan",
            Icons.home,
            currentPage == DrawerSection.plan ? true : false,
          ),
          menuitem(
            3,
            "Deposit",
            Icons.home,
            currentPage == DrawerSection.deposit ? true : false,
          ),
          menuitem(
            4,
            "Withdraw",
            Icons.home,
            currentPage == DrawerSection.withdraw ? true : false,
          ),
          menuitem(
            5,
            "Notification",
            Icons.home,
            currentPage == DrawerSection.notifications ? true : false,
          ),
          menuitem(
            6,
            "Statement",
            Icons.home,
            currentPage == DrawerSection.statement ? true : false,
          ),
          menuitem(
            7,
            "Account",
            Icons.home,
            currentPage == DrawerSection.account ? true : false,
          ),
        ],
      ),
    );
  }

  Widget menuitem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSection.home;
            }
            if (id == 2) {
              currentPage = DrawerSection.plan;
            }
            if (id == 3) {
              currentPage = DrawerSection.deposit;
            }
            if (id == 4) {
              currentPage = DrawerSection.withdraw;
            }
            if (id == 5) {
              currentPage = DrawerSection.notifications;
            }
            if (id == 6) {
              currentPage = DrawerSection.statement;
            }
            if (id == 7) {
              currentPage = DrawerSection.account;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSection {
  home,
  plan,
  deposit,
  withdraw,
  notifications,
  statement,
  account,
}
