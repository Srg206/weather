import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class Get_weather{

    Future<void> load_weather() async{
      //Response response = await Dio().get("http://api.weatherapi.com/v1/current.json?key=6b15400ed538441a849122510241302&q=Moscow&aqi=no");
      Response response = await Dio().get("http://api.weatherapi.com/v1/current.json?key=f5fb5447aac04078a34185819241302&q=Bryansk&aqi=no");
      // Parse the JSON
      Map<String, dynamic> parsed_data = response.data;
     //dynamic parsed_data = jsonDecode(response);
      //List<dynamic> data = jsonDecode(response.data);
      debugPrint("Z/n/n/n/n/n/n/n/n/n/n/n/n/n//eelkngkjsdnghnd/n/n/\nn/n/n");
      print("d fvj dfv");

      debugPrint(parsed_data.entries.toList()[1].toString());

    }


}

