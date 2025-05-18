import 'package:flutter/material.dart';
import 'package:todo_advance_app/app.dart';

enum Font {
  bold(FontWeight.w700),
  medium(FontWeight.w500),
  regular(FontWeight.w400),
  light(FontWeight.w300),
  semiBold(FontWeight.w600),
  italic(FontWeight.w400, FontStyle.italic),
  boldItalic(FontWeight.w700, FontStyle.italic);

  final FontWeight weight;
  final FontStyle style;
  const Font(this.weight, [this.style = FontStyle.normal]);
}

enum Decorate {
  underline(TextDecoration.underline),
  overline(TextDecoration.overline),
  lineThrough(TextDecoration.lineThrough),
  none(TextDecoration.none);

  final TextDecoration value;
  const Decorate(this.value);
}

class Txt extends StatelessWidget {
  final String text;
  final double size;
  final Font font;
  final Color? color;
  final Decorate decorate;
  final int? max;
  final TextAlign? align;
  final TextOverflow? clip;
  final double? space;
  final double? height;

  const Txt(
    this.text, {
    super.key,
    this.size = 16,
    this.font = Font.regular,
    this.color,
    this.decorate = Decorate.none,
    this.max,
    this.align,
    this.clip,
    this.space,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: max,
      textAlign: align,
      overflow: clip,
      style: TextStyle(
        fontSize: size,
        fontWeight: font.weight,
        fontStyle: font.style,
        color: color ?? Theme.of(context).textTheme.bodyMedium?.color,
        decoration: decorate.value,
        letterSpacing: space,
        height: height,
      ),
    );
  }
}

TextStyle style({
  Font? font,
  Decorate? decoration,
  Color? color,
  double? size,
  double? letterSpacing,
  double? lineHeight,
}) {
  return TextStyle(
    fontSize: size ?? displaysize.height * 0.018,
    fontWeight: font?.weight ?? Font.regular.weight,
    fontStyle: font?.style ?? FontStyle.normal,
    color: color,
    decoration: decoration?.value ?? Decorate.none.value,
    letterSpacing: letterSpacing,
    height: lineHeight,
  );
}

TextStyle Txtstyle({
  Font font = Font.regular,
  Decorate decoration = Decorate.none,
  Color? color,
  double? size,
  double? letterSpacing,
  double? lineHeight,
}) {
  return style(
    font: font,
    decoration: decoration,
    color: color,
    size: size,
    letterSpacing: letterSpacing,
    lineHeight: lineHeight,
  );
}
