import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:nagarismart/utilities/widget/artikelModel.dart';

class FetcArtikel {
  var data = [];
  List<ArtikelModel> results = [];
  String fetchUrl = 'https://batipuahateh.desa.id/get_berita.php';
  Future<List<ArtikelModel>> getArtikel({String? query}) async {
    var response = await http.get(Uri.parse(fetchUrl));
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((json) => ArtikelModel.fromJson(json)).toList();
        if (query != null) {
          results = results
              .where((artikel) =>
                  artikel.judul!.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {
        throw Exception('Gagal Memuat Berita');
      }
    } on Exception catch (e) {
      log('error : $e');
    }
    return results;
  }
}
