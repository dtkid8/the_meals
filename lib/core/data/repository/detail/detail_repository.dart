import 'package:dartz/dartz.dart';
import 'package:the_meals/core/data/repository/detail/data_source/detail_remote_data_source.dart';
import 'package:the_meals/core/domain/model/detail.dart';
import 'package:the_meals/core/failure.dart';

import '../../../exception.dart';
import '../../entity/detail/detail_entity.dart';

abstract class DetailRepositoryProtocol {
  Future<Either<Failure, Detail>> getDetail(String id);
}

class DetailRepository extends DetailRepositoryProtocol {
  final DetailRemoteDataSource remoteDataSource;
  DetailRepository({required this.remoteDataSource});
  @override
  Future<Either<Failure, Detail>> getDetail(String id) async {
    try {
      final DetailEntity result = await remoteDataSource.getDetail(id);
      final Detail detail = Detail.fromEntity(result);
      return Right(detail);
    } on ServerException {
      return const Left(ServerFailure('Network Error'));
    }
  }
}
