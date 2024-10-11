import 'package:flutter/material.dart';

import '../../../../utils/extensions/app_context_helper.dart';

class DrawerItem extends StatelessWidget {
  final VoidCallback onTap;
  final Icon icon;
  final String text;
  final bool? switchValue;

  const DrawerItem({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.text,
    this.switchValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: context.theme.shadowColor.withAlpha(20)))),
      child: ButtonTheme(
        child: TextButton(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(const EdgeInsets.symmetric(horizontal: 16, vertical: 2)),
          ),
          onPressed: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
                child: Align(
                  alignment: FractionalOffset.centerRight,
                  child: icon,
                ),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    text,
                    style: context.theme.textTheme.displaySmall,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
