import 'package:dartz/dartz.dart';

import '../../data/repository/detail/detail_repository.dart';
import '../../failure.dart';
import '../model/detail.dart';

class GetDetail{
  final DetailRepository detailRepository;

  GetDetail({required this.detailRepository});

  Future<Either<Failure,Detail>> execute(String id) async {
    return detailRepository.getDetail(id);
  }
}