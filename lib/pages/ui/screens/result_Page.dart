part of 'screens.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmiResult,
      @required this.interpretation,
      @required this.resultText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("RESULT PAGE"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Result",
                  style: kLabelTextStyle.copyWith(fontSize: 50),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ResCard(
                color: kActiveColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      style: kLabelTextStyle.copyWith(
                          color: Colors.greenAccent,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      bmiResult,
                      style: kLabelTextStyle.copyWith(
                          fontSize: 80, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle.copyWith(fontSize: 22),
                    )
                  ],
                ),
              ),
            ),
            BottomPage(
                onTap: () {
                  Navigator.pop(context);
                },
                buttonTitle: "Re-Calculate")
          ],
        ));
  }
}
