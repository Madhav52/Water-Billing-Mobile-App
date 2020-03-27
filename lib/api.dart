import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class CallApi{
    final String _url = 'http://10.0.2.2:8000/api/';
    // https://khanepaani.madhavbelbase.com.np/api/
    postData(data, apiUrl) async {
        var fullUrl = _url + apiUrl + await _getToken();
        return await http.post(
            fullUrl, 
            body: jsonEncode(data), 
            headers: _setHeaders()
        );
    }
    getData1(apiUrl) async {
       var fullUrl = _url + apiUrl + await _getToken(); 
       return await http.get(
         fullUrl, 
         headers: _setHeaders()
       );
    }
    getData(apiUrl) async {
       var fullUrl = _url + apiUrl; 
       return await http.get(
         fullUrl, 
         headers: _setHeaders()
       );
    }
    _setHeaders() => {
        'Content-type' : 'application/json',
        'Accept' : 'application/json',
    };

    _getToken() async {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        var token = localStorage.getString('token');
        return '?token=$token';
    }
      logout() async {
      // logout from the server ...
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      var lsData = localStorage.get('token');
      if (lsData != null) {
        SharedPreferences localStorage = await SharedPreferences.getInstance();
        localStorage.remove('token');
    }
  }
    
}