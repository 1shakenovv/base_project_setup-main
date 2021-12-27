import 'package:base_setup/app/clients/json_api_client.dart';
import 'package:base_setup/app/data/models/post_model.dart';
import 'package:base_setup/core/freezed/network_error.dart';
import 'package:base_setup/core/freezed/result.dart';
import 'package:base_setup/core/network/layers/network_executer.dart';

class JsonPlaceHolderService {
  Future<Result<List<PostModel>, NetworkError>> posts() async {
    return NetworkExecuter.execute<PostModel, List<PostModel>>(
      route: PlaceHolderClient.posts(),
      responseType: PostModel(),
    );
  }
}
