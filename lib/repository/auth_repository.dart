import '../data/network/base_api_service.dart';
import '../data/network/network_api_service.dart';
import '../res/app_url.dart';

class AuthRepository {
  BaseApiService _baseApiService = NetworkApiService();

  //Login Api
  Future<dynamic> loginApi(dynamic data)
  async {
    try
    {
      dynamic response = await
      _baseApiService.getPostApiResponse(AppUrl.LOGIN_URL, data);
      return response;
    }
    catch (e)
    {
      throw e;
    }
  }



}