import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:convert';

const CHAVE_YOUTUBE_API = "AIzaSyBms4rk-PF_VaM2cUAopcIOc4zpvPcI8Cg";
const ID_CANAL = "UCW3T8dQVEynwj6-_DArcM7w";
const URL_BASE = "https://www.googleapis.com/youtube/v3/";

class Api {
  pesquisar(String pesquisa) async {
    http.Response response = await http.get(URL_BASE +
        "search"
            "?part=snippet"
            "&type=video"
            "&maxResults=20"
            "&order=date"
            "&key=$CHAVE_YOUTUBE_API"
            "&channelId=${ID_CANAL}"
            "&q=$pesquisa");
    if (response.statusCode == 200) {
      Map<String, dynamic> dadosJson = json.decode(response.body);
      print(
          "Resultado: " + dadosJson["items"][0]["snippet"]["title"].toString());
    } else {}
  }
}
