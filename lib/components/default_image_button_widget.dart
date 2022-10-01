import 'package:flutter/material.dart';

class DefaultImageButton extends StatefulWidget {
  DefaultImageButton(
      {Key? key, required this.text, required this.image, this.color})
      : super(key: key);

  final String text;
  final String image;

  Color? color = Colors.green;

  @override
  State<DefaultImageButton> createState() => _DefaultImageButtonState();
}

class _DefaultImageButtonState extends State<DefaultImageButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {},
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            color: Colors.green),
        width: 228,
        height: 130,
        child: Row(
          children: [
            Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/deterministic.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            )),
            Container(child: Text(widget.text))
          ],
        ),
      ),
    );
  }
}
