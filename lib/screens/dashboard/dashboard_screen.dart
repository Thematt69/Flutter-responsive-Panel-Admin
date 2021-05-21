import 'package:admin/responsive.dart';
import 'package:flutter/material.dart';
import 'package:admin/constants.dart';
import 'components/header.dart';
import 'components/my_files.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            const SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                      const SizedBox(height: defaultPadding),
                      RecentFiles(),
                      Visibility(
                        visible: Responsive.isMobile(context),
                        child: const SizedBox(height: defaultPadding),
                      ),
                      Visibility(
                        visible: Responsive.isMobile(context),
                        child: StorageDetails(),
                      ),
                    ],
                  ),
                ),
                Visibility(
                  visible: !Responsive.isMobile(context),
                  child: const SizedBox(width: defaultPadding),
                ),
                Visibility(
                  visible: !Responsive.isMobile(context),
                  child: Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
