class ApiConstants {
  static String baseUrl = 'https://testing-app.rimes.int';

  //Auth API
  final login = '/Login_api/login';

  //Profile API
  final getProfile = '/Login_users_api/profile';

  final getDivisions = '/Road_api/getDivisions';
  final getAllDistricts = '/Metadata_api/getAllDistricts';
  final getRoadsFromDivision = '/Road_api/getRoadsFromDivision';

  //Dashboard APIs
  final getAggregateStats = '/Road_closure_stats_api/getAggregateStats';
  final getMonthWiseStats = '/Road_closure_stats_api/getMonthwiseStats';
  final getMonthWiseAvgRepairTime =
      '/Road_closure_stats_api/getMonthwiseAvgRepairTime';

  //Dashboard map geojson APIs
  final bagmatiProvinceDistrict =
      "https://np-dor-test.rimes.int/assets/geojson/province_bagmati/bg.geojson";
  final madeshProvinceDistrict =
      "https://np-dor-test.rimes.int/assets/geojson/province_madesh/madesh_province_district.geojson";

  //Road closer stats APIs
  final getRoadWiseStats = '/Road_closure_stats_api/getRoadwiseStats';
  final getDistrictWiseStats = '/Road_closure_stats_api/getDistrictwiseStats';

  //Road closer history APIs
  final getHistoryPaginated = '/Road_closure_history_api/getHistoryPaginated';
  final getHistory = '/Road_closure_history_api/getHistory';

  //Bridge closer APIs
  final getBridgeHistoryPaginated = '/BridgeClosure_api/getHistoryPaginated';
  final getBridgeHistory = '/BridgeClosure_api/getHistory';

  //Bridge closer stats APIs
  final getBridgewiseStats = '/BridgeClosure_stats_api/getBridgewiseStats';
  final getBridgeClosureMonthwiseStats =
      '/BridgeClosure_stats_api/getMonthwiseStats';
  final getBridgeClosureDistrictwiseStats =
      '/BridgeClosure_stats_api/getDistrictwiseStats';
  final getBridgeClosureMonthwiseAvgRepairTime =
      '/BridgeClosure_stats_api/getMonthwiseAvgRepairTime';
  final getBridgeClosureAggregateStats =
      '/BridgeClosure_stats_api/getAggregateStats';

  //Advisories APIs
  final getAdvisoryHistory = '/Advisory_history_api/getHistory';
  final postAdvisory = '/Road_closure_history_api/createData';
  final postBridgeCloserAdvisory = '/BridgeClosure_api/createData';
  final saveImages = '/Road_closure_history_api/saveImages';
}
