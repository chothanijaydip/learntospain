import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeRowMobile extends StatelessWidget {
  const HomeRowMobile({
    Key? key,
    required this.alignFromStart,
    required this.mainText,
    required this.subText,
    required this.imageAsset,
    required this.mainTextSize,
    required this.mainTextConstraint,
    required this.subTextConstraint,
  }) : super(key: key);

  final bool alignFromStart;
  final String mainText;
  final String subText;
  final AssetImage imageAsset;
  final double mainTextSize;
  final double mainTextConstraint;
  final double subTextConstraint;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignFromStart ? Alignment.centerLeft : Alignment.centerRight,
      child: Padding(
        padding: alignFromStart
            ? EdgeInsets.only(left: 7.w, top: 20.h)
            : EdgeInsets.only(right: 7.w, top: 20.h),
        child: Column(
          children: alignFromStart
              ? [
                  TheTexts(
                    alignFromStart: alignFromStart,
                    mainText: mainText,
                    subText: subText,
                    mainTextSize: mainTextSize,
                    subTextConstraint: subTextConstraint,
                    mainTextConstraint: mainTextConstraint,
                  ),
                  TheImage(
                    alignFromStart: alignFromStart,
                    imageAsset: imageAsset,
                  ),
                ]
              : [
                  TheTexts(
                    alignFromStart: alignFromStart,
                    mainText: mainText,
                    subText: subText,
                    mainTextSize: mainTextSize,
                    subTextConstraint: subTextConstraint,
                    mainTextConstraint: mainTextConstraint,
                  ),
                  TheImage(
                    alignFromStart: alignFromStart,
                    imageAsset: imageAsset,
                  ),
                ],
        ),
      ),
    );
  }
}

class TheImage extends StatelessWidget {
  const TheImage({
    Key? key,
    required this.alignFromStart,
    required this.imageAsset,
  }) : super(key: key);

  final bool alignFromStart;
  final AssetImage imageAsset;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignFromStart ? Alignment(0.7, 0) : Alignment(-0.7, 0),
      child: SizedBox(
        width: 50.w,
        height: 50.w,
        child: Image(
          image: imageAsset,
        ),
      ),
    );
  }
}

class TheTexts extends StatelessWidget {
  const TheTexts({
    Key? key,
    required this.alignFromStart,
    required this.mainText,
    required this.subText,
    required this.mainTextSize,
    required this.mainTextConstraint,
    required this.subTextConstraint,
  }) : super(key: key);

  final bool alignFromStart;
  final String mainText;
  final String subText;
  final mainTextSize;
  final double mainTextConstraint;
  final double subTextConstraint;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment:
          alignFromStart ? CrossAxisAlignment.start : CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 100.w,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: mainTextConstraint),
          child: SelectableText(
            mainText,
            textAlign: alignFromStart ? TextAlign.left : TextAlign.right,
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: mainTextSize),
          ),
        ),
        SizedBox(height: 2.h),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: subTextConstraint),
          child: SelectableText(
            subText,
            textAlign: alignFromStart ? TextAlign.left : TextAlign.right,
            style:
                Theme.of(context).textTheme.headline3!.copyWith(fontSize: 16),
          ),
        ),
        SizedBox(height: 2.h),
      ],
    );
  }
}
