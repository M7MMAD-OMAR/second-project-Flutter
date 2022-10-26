import 'dart:convert';
import 'package:http/http.dart' as http;


void main() async{
   var temp = await fetchData();

   for(var item in temp) {
     print("User ID: ${item['userId']}");
     print("ID: ${item['id']}");
     print(item['title']);
     print(item['body']);
     print("---------------------------------------");
   }
}


fetchData() async {
  const url = "https://jsonplaceholder.typicode.com/posts";

  final resultDate = await http.get(Uri.parse(url));

  if(resultDate.statusCode == 200) {
     var obj = json.decode(resultDate.body);
     return obj;
  }else {
    print("Not Good");
  }

}