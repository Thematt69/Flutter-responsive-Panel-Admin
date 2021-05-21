class StorageDetails {
  final String title, svgSrc, amountOfFiles;
  final int numOfFiles;

  StorageDetails({
    required this.title,
    required this.svgSrc,
    required this.amountOfFiles,
    required this.numOfFiles,
  });
}

List<StorageDetails> demoStorageDetails = [
  StorageDetails(
    title: 'Documents Files',
    svgSrc: 'assets/icons/Documents.svg',
    amountOfFiles: '1.3GB',
    numOfFiles: 1328,
  ),
  StorageDetails(
    title: 'Media Files',
    svgSrc: 'assets/icons/media.svg',
    amountOfFiles: '15.3GB',
    numOfFiles: 1328,
  ),
  StorageDetails(
    title: 'Other Files',
    svgSrc: 'assets/icons/folder.svg',
    amountOfFiles: '1.3GB',
    numOfFiles: 1328,
  ),
  StorageDetails(
    title: 'Unknown',
    svgSrc: 'assets/icons/unknown.svg',
    amountOfFiles: '1.3GB',
    numOfFiles: 140,
  ),
];
