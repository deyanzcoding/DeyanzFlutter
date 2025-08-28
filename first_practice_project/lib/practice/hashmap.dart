// practice of hashmap

void main() {
  var mapName = {
    'key1' : 'value1',
    'key2' : 2,
    'key3' : 3.0,
    'key4' : true
  };

  print(mapName);

  //printing value of specific key
  print("Value of key2 : ");
  print(mapName['key2']);

  // print(map_name['Key2']);  'null' becasue k & K.
  // print(map_name['Key5']);  'null' because not a key.
  
  //update key value
  mapName['key2'] = "Hassnain";
  print(mapName);

  var mapName1 = {};
    mapName1['key1'] = 'value1';
    mapName1['key2'] = 'value2';
    mapName1['key3'] = 'value3';
    mapName1['key4'] = 'value4';

  //Helper functions
  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);  
  print(mapName.keys);  //display all key values  
  print(mapName.values);  //display all values of key
  print(mapName.containsKey('Name'));
  print(mapName.containsValue(false));
  print(mapName.remove('key4'));  //remove key4
  print(mapName);  //display empty map


}