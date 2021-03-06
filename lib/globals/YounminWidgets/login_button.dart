import 'package:flutter/material.dart';
import 'package:younmin/globals/Strings/global_strings.dart';

import '../colors.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
            backgroundColor: YounminColors.materialStatePrimaryColor,
            minimumSize: MaterialStateProperty.all<Size>(Size(
              130,
              40,
            )),
          ),
      onPressed: onPressed,
      child: Text(
        GlobalStrings.login,
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(fontSize: 30, color: Colors.white),
      ),
    );
  }
}
