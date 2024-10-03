import 'package:flutter/material.dart';

import '../../utils/images_strings.dart';

class EmptyResultWidget extends StatelessWidget {
  final Function onRefresh;
  const EmptyResultWidget({super.key, required this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () async {
          await onRefresh();
        },
        child: ListView(
          shrinkWrap: true,
          children: [
            const Spacer(
              flex: 1,
            ),
            Image.asset(
              AppImages.emptyListImg,
              width: MediaQuery.of(context).size.width * 2 / 4,
              height: MediaQuery.of(context).size.width * 2 / 4,
            ),
            const Align(alignment: Alignment.center, child: Text("Empty List")),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
