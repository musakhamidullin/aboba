import 'package:aboba/presentation/themes/theme.dart';
import 'package:flutter/material.dart';

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    const rectangleSize = 40.0;

    return Row(
      children: [
        const SizedBox(
          width: 16,
        ),
        InkWell(
          onTap: () => onTap?.call(),
          child: SizedBox(
            height: rectangleSize,
            width: rectangleSize,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8), color: primary[50]),
                child: const Icon(Icons.arrow_back_outlined)),
          ),
        ),
      ],
    );
  }
}
