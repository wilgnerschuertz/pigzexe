import 'dart:convert';

import 'package:dio/dio.dart';
import '/src/modules/feed/domain/errors/errors.dart';

import '../../infra/datasource/feed_datasource.dart';
import '../../infra/models/feed_model.dart';

class FeedDatasourceImpl implements FeedDatasource {
  final Dio _dio;

  FeedDatasourceImpl(this._dio);
  @override
  Future<List<FeedModel>> getFeeds() async {
    var response = await _dio.get(
        'https://raw.githubusercontent.com/wilgnerschuertz/pigzexe/main/lib/datas/data.json?token=GHSAT0AAAAAABYHFFAFUPL3NBELQDGWTJV6YZBGAUQ');

    if (response.statusCode == 200) {
      // return (response as List).map((e) => FeedModel.fromMap(e)).toList();

      return (jsonDecode(response.data) as List)
          .map((e) => FeedModel.fromMap(e))
          .toList();
    }

    return throw Failure();
  }
}
