import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rankify/constants/colors.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  final availableFilers = [
    'All',
    'Exams',
    'Offers',
  ];

  late String _selectedFilter;

  @override
  void initState() {
    super.initState();
    _selectedFilter = availableFilers[0];
  }

  final Map<DateTime, List<NotificationItem>> groupedNotifications = {
    DateTime(2025, 2, 5): [
      NotificationItem(
        title: 'Achievement Unlocked!',
        subtitle: '100% UNLOCKED – Youve completed all beginner challenges',
        date: DateTime(2025, 2, 5),
        type: 'offers',
        isNew: true,
        icon: 'assets/svg/gift.svg',
      ),
      NotificationItem(
        title: 'Coins Earned',
        subtitle: 'You earned 10 DreamCoins for completing daily quiz',
        date: DateTime(2025, 2, 5),
        type: 'offers',
        isNew: true,
        icon: 'assets/svg/gift.svg',
      ),
      NotificationItem(
        title: 'SSC Mock Test Available',
        subtitle: 'New SSC mock test is now available. Attempt now to boost your preparation!',
        date: DateTime(2025, 2, 5),
        type: 'exams',
        isNew: true,
        icon: 'assets/svg/gift.svg',
      ),
    ],
    DateTime(2025, 2, 4): [
      NotificationItem(
        title: 'App Update',
        subtitle: 'New features added! Update now to enjoy better experience',
        date: DateTime(2025, 2, 4),
        type: 'offers',
        isNew: false,
        icon: 'assets/svg/gift.svg',
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _customAppBar(context),
              showFilters(),
              buildNotifications(groupedNotifications),
            ],
          ),
        ),
      ),
    );
  }

  Widget showFilters() {
    return Container(
      width: double.infinity,
      height: 80,
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: availableFilers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedFilter = availableFilers[index];
                  });
                },
                child: Chip(
                  label: Text(availableFilers[index]),
                  backgroundColor: _selectedFilter == availableFilers[index]
                      ? GlobalColors.buttonColor
                      : Colors.grey[200],
                  shape: StadiumBorder(),
                  labelStyle: TextStyle(
                    color: _selectedFilter == availableFilers[index]
                        ? Colors.white
                        : Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildNotifications(Map<DateTime, List<NotificationItem>> notifications) {
    List<DateTime> sortedDates = notifications.keys.toList()
      ..sort((a, b) => b.compareTo(a));

    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: sortedDates.length,
      itemBuilder: (context, index) {
        DateTime date = sortedDates[index];
        List<NotificationItem> dayNotifications = notifications[date] ?? [];
        
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
                  ...dayNotifications.where((n) => n.type == _selectedFilter.toLowerCase() || _selectedFilter == 'All')
            .map(
              (notification) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _formatDate(date),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                  ),
                Divider(),
                  customNotificationTile(
                  title: notification.title,
                  subtitle: notification.subtitle,
                  date: _formatDate(notification.date),
                  isNew: notification.isNew,
                  icon: notification.icon,
                
                              ),
                              ]
              ),
            ),
            
          ],
        );
      },
    );
  }

  String _formatDate(DateTime date) {
    List<String> months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return '${date.day.toString().padLeft(2, '0')} ${months[date.month - 1]} ${date.year}';
  }
}

Widget customNotificationTile({
  required String title,
  required String subtitle,
  required String date,
  required bool isNew,
  required String icon,
}) {
  return Container(
    margin: EdgeInsets.only(bottom: 8),
    decoration: BoxDecoration(
      color: isNew ? Colors.pink[50] : Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          offset: const Offset(0, 2),
          blurRadius: 6,
          spreadRadius: -1,
          color: Colors.black.withOpacity(0.08),
        ),
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
              width: 40,
              height: 40,
              child: SvgPicture.asset(
                icon,
                width: 40,
                height: 40,
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    if (isNew)
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        decoration: BoxDecoration(
                          color: GlobalColors.buttonColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'NEW',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _customAppBar(BuildContext context) {
  return Container(
    color: GlobalColors.buttonColor,
    child: Padding(
      padding: EdgeInsets.only(
        top: 20.0,
        left: 10.0,
        right: 10.0,
        bottom: 20.0,
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Notifications",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

class NotificationItem {
  final String title;
  final String subtitle;
  final DateTime date;
  final String type;
  final bool isNew;
  final String icon;

  NotificationItem({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.type,
    required this.isNew,
    required this.icon,
  });
}