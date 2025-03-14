import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class CloudinaryService {
  final String _cloudName = dotenv.env['CLOUDINARY_CLOUD_NAME']!;
  final String _apiKey = dotenv.env['CLOUDINARY_API_KEY']!;
  final String _aptSecret = dotenv.env['CLOUDINARY_API_SECRET']!;

  Future<String?> uploadImage(File imageFile) async {
    final url = 'https://api.cloudinary.com/v1_1/$_cloudName/image/upload';
    final request = http.MultipartRequest('POST', Uri.parse(url));
    request.fields['upload_preset'] = 'your_upload_preset';
    request.fields['api_key'] = _apiKey;
    request.fields['timestamp'] = (DateTime.now().microsecondsSinceEpoch / 1000).toString();
    request.files.add(await http.MultipartFile.fromPath('file', imageFile.path));

    final response = await request.send();
    if (response.statusCode == 200) {
      final responseData = await response.stream.bytesToString();
      final jsonResponse = jsonDecode(responseData);
      return jsonResponse['secure_url'];
    } else {
      throw Exception('Failed to upload image');
    }
  }
}