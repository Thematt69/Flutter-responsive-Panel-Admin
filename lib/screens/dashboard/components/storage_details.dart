import 'package:admin/models/StorageDetails.dart';
import 'package:admin/screens/dashboard/components/storage_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryDarkColor,
        borderRadius: BorderRadius.circular(defaultRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Storage Details',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: defaultPadding),
          Chart(),
          for (var item in demoStorageDetails)
            StorageInfoCard(
              title: item.title,
              svgSrc: item.svgSrc,
              amountOfFiles: item.amountOfFiles,
              numOfFiles: item.numOfFiles,
            ),
        ],
      ),
    );
  }
}
