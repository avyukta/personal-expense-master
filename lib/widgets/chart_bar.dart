import 'package:flutter/material.dart';

// import 'package:personal_expense_app/models/transaction.dart';

class ChartBar extends StatelessWidget {
  final String label;
  final double amount;
  final double amountBarPerCent;

  ChartBar(this.label, this.amount, this.amountBarPerCent);

  @override
  Widget build(BuildContext context) {
    // print(amountBarPerCent is double);
    return LayoutBuilder(
      builder: (ctx, constraint) {
        return Column(
          children: <Widget>[
            Container(
              height: constraint.maxHeight * 0.15,
              child: FittedBox(
                child: Text('\₹$amount'),
              ),
            ),
            SizedBox(
              height: constraint.maxHeight * 0.05,
            ),
            Container(
              height: constraint.maxHeight * 0.6,
              width: 10,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        color: Color.fromRGBO(220, 220, 220, 1),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  FractionallySizedBox(
                    heightFactor: amountBarPerCent,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: constraint.maxHeight * 0.05,
            ),
            Container(
                height: constraint.maxHeight * 0.15,
                child: FittedBox(child: Text('$label'))),
          ],
        );
      },
    );
  }
}
