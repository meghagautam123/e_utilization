import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import '../data/response/api_response.dart';
import '../repository/auth_repository.dart';

class AuthViewModel with ChangeNotifier
{
  final _authrepo = AuthRepository();


  Future<void> loginApi(dynamic data,BuildContext context) async
  {


  _authrepo.loginApi(data)
        .then((value) => _setMovieMain(ApiResponse.completed(value)))
        .onError((error, stackTrace) => _setMovieMain(ApiResponse.error(error.toString())));


  /*  _authrepo.loginApi(data).then((value)
    {
      if(kDebugMode)
      {
        print(value.toString());
        _setMovieMain(ApiResponse.completed(value));
      }
   }


    ).onError((error, stackTrace)
    {
      if(kDebugMode)
      {
        print(error.toString());
      }
    });*/
  }


  void _setMovieMain(ApiResponse response) {
    print("MARAJ :: $response");
   // movieMain = response;
    notifyListeners();
  }


}
