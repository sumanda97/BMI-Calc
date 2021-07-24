part of 'screens.dart';

class ResCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function ontap;
  ResCard({@required this.color, this.cardChild, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: color, borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}
