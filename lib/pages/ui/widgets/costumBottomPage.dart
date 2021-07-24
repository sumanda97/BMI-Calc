part of 'widgets.dart';

class BottomPage extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomPage({@required this.onTap, @required this.buttonTitle});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: kBottomColor,
        margin: EdgeInsets.only(top: 10),
        height: kBottomHeight,
        width: double.infinity,
        child: Center(
            child: Text(
          buttonTitle,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        )),
      ),
    );
  }
}
