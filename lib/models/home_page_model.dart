class HomePageModel {
  String HSShift;
  String HSDate;
  String HSMaterial;
  String HSBatchNumber;
  String HSMachineId;
  String HSPackageSpec;
  String HSDescription;
  int selectedTab;
  HomePageModel({
    this.HSShift = "",
    this.HSBatchNumber = "",
    this.HSDate = "",
    this.HSDescription = "",
    this.HSMachineId = "",
    this.HSMaterial = "",
    this.HSPackageSpec = "",
    this.selectedTab = -1,
  });
}
