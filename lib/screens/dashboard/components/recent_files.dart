import 'package:admin/models/RecentFile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({
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
          Text(
            'Recent Files',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              horizontalMargin: 0,
              columnSpacing: defaultPadding,
              columns: const [
                DataColumn(
                  label: Text('File Name'),
                ),
                DataColumn(
                  label: Text('Date'),
                ),
                DataColumn(
                  label: Text('Size'),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                (index) => recentFileDataRow(
                  demoRecentFiles[index],
                  context,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

DataRow recentFileDataRow(RecentFile fileInfo, BuildContext context) {
  final Size _size = MediaQuery.of(context).size;
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            Visibility(
              visible: _size.width >= 650,
              child: Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: SvgPicture.asset(
                  fileInfo.icon,
                  height: 30,
                  width: 30,
                ),
              ),
            ),
            Text(
              fileInfo.title,
            ),
          ],
        ),
      ),
      DataCell(
        Text(
          fileInfo.date,
        ),
      ),
      DataCell(
        Text(
          fileInfo.size,
        ),
      ),
    ],
  );
}
