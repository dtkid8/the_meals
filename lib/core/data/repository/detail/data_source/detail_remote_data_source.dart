import 'package:dio/dio.dart';

import '../../../../endpoint.dart';
import '../../../../exception.dart';
import '../../../entity/detail/detail_entity.dart';

abstract class DetailRemoteDataSourceProtocol {
  Future<DetailEntity> getDetail(String id);
}

class DetailRemoteDataSource extends DetailRemoteDataSourceProtocol {
  final Dio client;
  DetailRemoteDataSource({required this.client});

  @override
  Future<DetailEntity> getDetail(String id) async {
    try {
      final response = await client.get(Endpoint.detail,
      queryParameters: {
        "i": id,
      });
      if (response.statusCode == 200) {
        return DetailEntity.fromJson(response.data);
      }
      throw ServerException();
    } catch (e) {
      throw ServerException();
    }
  }
}
