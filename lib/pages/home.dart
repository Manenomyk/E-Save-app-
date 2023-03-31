import 'package:e_saveapp/pages/dashboard.dart';
import 'package:flutter/material.dart';
import '../MyHeaderDrawer.dart';
import 'package:e_saveapp/pages/deposit.dart';
// import 'package:e_saveapp/pages/home.dart';
import 'package:e_saveapp/pages/notifications.dart';
import 'package:e_saveapp/pages/plan.dart';
import 'package:e_saveapp/pages/statement.dart';
import 'package:e_saveapp/pages/withdraw.dart';
import 'package:e_saveapp/pages/account.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var currentPage = DrawerSection.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSection.dashboard) {
      container = Dashboard();
    } else if (currentPage == DrawerSection.plan) {
      container = Plan();
    } else if (currentPage == DrawerSection.deposit) {
      container = Deposit();
    } else if (currentPage == DrawerSection.withdraw) {
      container = Withdraw();
    } else if (currentPage == DrawerSection.statement) {
      container = Statement();
    } else if (currentPage == DrawerSection.notifications) {
      container = Notifications();
    } else if (currentPage == DrawerSection.account) {
      container = Account();
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-save app'),
      ),
      body: container,
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
        top: 5,
      ),
      child: Column(
        children: [
          menuitem(
            1,
            "Dashboard",
            Icons.dashboard,
            currentPage == DrawerSection.dashboard ? true : false,
          ),
          menuitem(
            2,
            "Plan",
            Icons.swap_vert_circle,
            currentPage == DrawerSection.plan ? true : false,
          ),
          menuitem(
            3,
            "Deposit",
            Icons.attach_money,
            currentPage == DrawerSection.deposit ? true : false,
          ),
          menuitem(
            4,
            "Withdraw",
            Icons.recommend_rounded,
            currentPage == DrawerSection.withdraw ? true : false,
          ),
          menuitem(
            5,
            "Notification",
            Icons.notifications_active_rounded,
            currentPage == DrawerSection.notifications ? true : false,
          ),
          menuitem(
            6,
            "Statement",
            Icons.currency_exchange,
            currentPage == DrawerSection.statement ? true : false,
          ),
          menuitem(
            7,
            "Account",
            Icons.account_balance_wallet_rounded,
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
              currentPage = DrawerSection.dashboard;
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
  dashboard,
  plan,
  deposit,
  withdraw,
  notifications,
  statement,
  account,
}
