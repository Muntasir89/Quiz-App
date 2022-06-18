import 'package:flutter/material.dart';
import 'package:websafe_svg/websafe_svg.dart';
import 'package:quiz_app/screens/constraints.dart';
import 'package:quiz_app/screens/quiz/components/progress_bar.dart';
import 'package:quiz_app/models/Questions.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        WebsafeSvg.asset("assets/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefualtPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProgressBar(),
                SizedBox(height: kDefualtPadding),
                Text.rich(TextSpan(
                  text: "Question 1",
                  style: Theme.of(context).textTheme.headline4?.copyWith(color: kSecondaryColor),
                  children: [
                    TextSpan(
                      text: "/10",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: kSecondaryColor),
                    )
                  ],
                )),
                Divider(thickness: 1.5),
                SizedBox(height: kDefualtPadding),
                Container(
                  padding: EdgeInsets.all(kDefualtPadding),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      Text(
                      sample_data[0]['question'],
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(color: kBlackColor)
                      ),
                      Options(),
                      Options(),
                      Options(),
                      Options(),
                    ]
                  )
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Options extends StatelessWidget {
  const Options({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefualtPadding),
      padding: EdgeInsets.all(kDefualtPadding),
      decoration: BoxDecoration(
        border: Border.all(color: kGrayColor),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "1. Test",
            style: TextStyle(color: kGrayColor, fontSize: 16),
          ),
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(color: kGrayColor),
            ),
          )
        ],
      ),
    );
  }
}
