import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rankify/constants/colors.dart';

class Rankifycoins extends StatefulWidget {
  Rankifycoins({super.key});

  @override
  State<Rankifycoins> createState() => _RankifycoinsState();
}

class _RankifycoinsState extends State<Rankifycoins> {
  final Map<DateTime, List<CoinTransaction>> groupedTransactions = {
    DateTime(2025, 2, 5): [
      CoinTransaction(
        title: 'Referral Bonus Earned!',
        subtitle: 'You successfully referred a friend and earned bonus coins.',
        date: DateTime(2025, 2, 5),
        time: '2:30 PM',
        coins: 20,
        type: 'earned',
        isNew: true,
        icon: 'assets/svg/gift.svg',
        expiryDate: DateTime(2025, 2, 25),
      ),
      CoinTransaction(
        title: 'Daily Login Streak!',
        subtitle: 'You\'ve maintained your daily login streak. Keep it up!',
        date: DateTime(2025, 2, 5),
        time: '9:00 AM',
        coins: 5,
        type: 'earned',
        isNew: true,
        icon: 'assets/svg/gift.svg',
        expiryDate: DateTime(2025, 2, 25),
      ),
    ],
    DateTime(2025, 2, 2): [
      CoinTransaction(
        title: 'Exam Completion Reward!',
        subtitle: 'You completed the SSC mock exam and earned your reward.',
        date: DateTime(2025, 2, 2),
        time: '4:15 PM',
        coins: 15,
        type: 'earned',
        isNew: false,
        icon: 'assets/svg/gift.svg',
        expiryDate: DateTime(2025, 2, 22),
      ),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            
            children: [
              _customAppBar(context),
               _balanceContainer(),
        _buildTransactionHistory(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _balanceContainer() {
    return Container(
      width: double.infinity,
      height: 150,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: GlobalColors.buttonColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.monetization_on,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            '150 Coins',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () => _showCoinExpirationDialog(),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.warning,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 5),
              child: Row(
                children: [
                  Icon(Icons.emoji_events, color: Colors.white),
                  SizedBox(width: 5),
                  Text(
                    'Keep earning to unlock rewards!',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionHistory() {
    List<DateTime> sortedDates = groupedTransactions.keys.toList()
      ..sort((a, b) => b.compareTo(a));

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: sortedDates.length + 1,
      itemBuilder: (context, index) {
         if (index == sortedDates.length) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.remove_red_eye,color: GlobalColors.buttonColor,),
          Text(
            'View All Activity',
            style: TextStyle(
              color: GlobalColors.buttonColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );         
        }
        DateTime date = sortedDates[index];
        List<CoinTransaction> dayTransactions = groupedTransactions[date] ?? [];
    
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (index == 0 || sortedDates[index - 1] != date)
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Row(
                  spacing: 20,
                  children: [
                    Text(
                      _formatDate(date),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600],
                      ),
                    ),
                    Text(
                      '• expires ${_formatDate(dayTransactions.first.expiryDate)}',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[500],
                      ),
                    ),
                  ],
                ),
              ),
            ...dayTransactions.map(
              (transaction) => _customTransactionTile(
                title: transaction.title,
                subtitle: transaction.subtitle,
                time: transaction.time,
                coins: transaction.coins,
                isNew: transaction.isNew,
                icon: transaction.icon,
                type: transaction.type,
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _customTransactionTile({
    required String title,
    required String subtitle,
    required String time,
    required int coins,
    required bool isNew,
    required String icon,
    required String type,
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
                            fontWeight: FontWeight.bold,
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
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Text(
                    time,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    '+$coins',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: GlobalColors.buttonColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _showCoinExpirationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coin Expiration Policy',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'All coins earned must be used within 20 days of earning them. For example, if you earn 100 coins today, you must spend them within the next 20 days or they will expire automatically.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Text(
                      'Got it',
                      style: TextStyle(
                        color: GlobalColors.buttonColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
                "Rankify Coins",
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
}

class CoinTransaction {
  final String title;
  final String subtitle;
  final DateTime date;
  final String time;
  final int coins;
  final String type;
  final bool isNew;
  final String icon;
  final DateTime expiryDate;

  CoinTransaction({
    required this.title,
    required this.subtitle,
    required this.date,
    required this.time,
    required this.coins,
    required this.type,
    required this.isNew,
    required this.icon,
    required this.expiryDate,
  });
}