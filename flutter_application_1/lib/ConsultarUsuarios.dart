import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<List<dynamic>> fetchAlbum() async {
  final response =await http.get(Uri.parse(''));
  if (response.statusCode == 200){
    return jsonDecode(response.body);
  }else{
    throw Exception('Failed to load jewelry products');
  }
}