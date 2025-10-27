import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:finance_tracker/module/color.dart';
import 'package:finance_tracker/view/pages/analytics_page.dart';
import 'package:finance_tracker/view/pages/deptPage.dart';
import 'package:finance_tracker/view/pages/homePage.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int _bottomNavIndex = 0;
List<IconData> iconList = [
  Icons.home,
  Icons.bar_chart,
  Icons.pie_chart,
  Icons.person,
];

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List deptList = [
      {
        'name': 'John Doe',
        'phone': 201234567890,
        'repaymentDate': '2023-10-01',
        'lastRepayment': '2023-09-15',
        'amount': 150.0,
        'isIncome': false,
      },
      {
        'name': 'Jane Smith',
        'phone': 9876543210,
        'repaymentDate': '2023-10-05',
        'lastRepayment': '2023-09-20',
        'amount': 200.0,
        'isIncome': true,
      },
      {
        'name': 'Alice Johnson',
        'phone': 5551234567,
        'repaymentDate': '2023-10-10',
        'lastRepayment': '2023-09-25',
        'amount': 300.0,
        'isIncome': false,
      },

      {
        'name': 'Bob Brown',
        'phone': 4449876543,
        'repaymentDate': '2023-10-15',
        'lastRepayment': '2023-09-30',
        'amount': 250.0,
        'isIncome': true,
      },
      {
        'name': 'Charlie Davis',
        'phone': 3334567890,
        'repaymentDate': '2023-10-20',
        'lastRepayment': '2023-10-05',
        'amount': 180.0,
        'isIncome': false,
      },
      {
        'name': 'Diana Evans',
        'phone': 2229876543,
        'repaymentDate': '2023-10-25',
        'lastRepayment': '2023-10-10',
        'amount': 220.0,
        'isIncome': true,
      },
    ];

    List transactionList = [
      {
        'title': 'Grocery Shopping',
        'category': 'Grocery',
        'date': '2023-09-01',
        'icon': Icons.shopping_cart,
        'iconBgColor': mainColor,
        'amount': 75.50,
        'isIncome': false,
      },
      {
        'title': 'Salary',
        'category': 'Salary',
        'date': '2023-09-05',
        'icon': Icons.attach_money,
        'iconBgColor': Colors.green,
        'amount': 1500.00,
        'isIncome': true,
      },
      {
        'title': 'Electricity Bill',
        'category': 'Bill',
        'date': '2023-09-10',
        'icon': Icons.bolt,
        'iconBgColor': Colors.orange,
        'amount': 60.75,
        'isIncome': false,
      },
      {
        'title': 'Freelance Project',
        'category': 'Work',
        'date': '2023-09-15',
        'icon': Icons.work,
        'iconBgColor': Colors.blue,
        'amount': 300.00,
        'isIncome': true,
      },
      {
        'title': 'Dining Out',
        'category': 'Food',
        'date': '2023-09-20',
        'icon': Icons.restaurant,
        'iconBgColor': Colors.purple,
        'amount': 45.00,
        'isIncome': false,
      },
      {
        'title': 'Gym Membership',
        'category': 'Health',
        'date': '2023-09-25',
        'icon': Icons.fitness_center,
        'iconBgColor': Colors.red,
        'amount': 40.00,
        'isIncome': false,
      },
      {
        'title': 'Stock Dividends',
        'category': 'Work',
        'date': '2023-09-28',
        'icon': Icons.attach_money,
        'iconBgColor': Colors.green,
        'amount': 120.00,
        'isIncome': true,
      },
      {
        'title': 'Movie Tickets',
        'category': 'Entertainment',
        'date': '2023-09-30',
        'icon': Icons.movie,
        'iconBgColor': Colors.yellow,
        'amount': 25.50,
        'isIncome': false,
      },
      {
        'title': 'Grocery Shopping',
        'category': 'Grocery',
        'date': '2023-09-01',
        'icon': Icons.shopping_cart,
        'iconBgColor': mainColor,
        'amount': 75.50,
        'isIncome': false,
      },
      {
        'title': 'Salary',
        'category': 'Salary',
        'date': '2023-09-05',
        'icon': Icons.attach_money,
        'iconBgColor': Colors.green,
        'amount': 1500.00,
        'isIncome': true,
      },
      {
        'title': 'Electricity Bill',
        'category': 'Bill',
        'date': '2023-09-10',
        'icon': Icons.bolt,
        'iconBgColor': Colors.orange,
        'amount': 60.75,
        'isIncome': false,
      },
      {
        'title': 'Freelance Project',
        'category': 'Work',
        'date': '2023-09-15',
        'icon': Icons.work,
        'iconBgColor': Colors.blue,
        'amount': 300.00,
        'isIncome': true,
      },
    ];

    List totalData = [
      {'title': 'Total Income', 'amount': 1500.0, 'index': 0},
      {'title': 'Total Expenses', 'amount': 1000.0, 'index': 1},
      {'title': 'Total Balance', 'amount': 500.0, 'index': 2},
      {'title': 'Total Dept', 'amount': 1500.0, 'index': 3},
      {'title': 'Total Borrowed', 'amount': 1500.0, 'index': 4},
      {'title': 'Total Lent', 'amount': 1500.0, 'index': 5},
    ];

    List<Widget> pages = [
      homePage(
        context: context,
        totalData: totalData,
        transactionList: transactionList,
      ),
      deptPage(context: context, deptList: deptList),
      AnalyticsPage(),
      const Center(child: Text('Profile Page')),
    ];

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mainColor,
        shape: const CircleBorder(),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        backgroundColor: mainColor,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.defaultEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
      appBar: AppBar(
        backgroundColor: mainColor,
        title: const Text(
          'Finance Tracker',
          style: TextStyle(color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const Drawer(),
      body: pages[_bottomNavIndex],
    );
  }
}
