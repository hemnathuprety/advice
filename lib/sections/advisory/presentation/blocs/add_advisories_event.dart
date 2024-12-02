part of 'add_advisories_bloc.dart';

@immutable
sealed class AddAdvisoriesEvent extends Equatable {
  const AddAdvisoriesEvent();

  @override
  List<Object> get props => [];
}

class GetDivisionsList extends AddAdvisoriesEvent {
  const GetDivisionsList();

  @override
  List<Object> get props => [];
}

class GetDistrictsList extends AddAdvisoriesEvent {
  const GetDistrictsList();

  @override
  List<Object> get props => [];
}

class GetRoadDivisionsList extends AddAdvisoriesEvent {
  final String divName;

  const GetRoadDivisionsList({
    required this.divName,
  });

  @override
  List<Object> get props => [];
}

class FilterRoadLinkList extends AddAdvisoriesEvent {
  final String refNo;

  const FilterRoadLinkList({
    required this.refNo,
  });

  @override
  List<Object> get props => [];
}

class UploadAdvisory extends AddAdvisoriesEvent {
  final dynamic dataModel;

  const UploadAdvisory({
    required this.dataModel,
  });

  @override
  List<Object> get props => [dataModel];
}

class UploadAdvisoryImages extends AddAdvisoriesEvent {
  final List<XFile?> files;
  final int id;

  const UploadAdvisoryImages({
    required this.files,
    required this.id,
  });

  @override
  List<Object> get props => [files, id];
}

class DataResetEvent extends AddAdvisoriesEvent {
  const DataResetEvent();

  @override
  List<Object> get props => [];
}
