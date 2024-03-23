

import 'package:flutter/cupertino.dart';

class DashedLineWidget extends StatelessWidget {
  const DashedLineWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...List.generate(30, (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: Container(
              height: 2,
              color: Color(0xffB8B8B8),
            ),
          ),
        ))
      ],
    );
  }
}