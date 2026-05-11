void main() {
  // var gifts = {
  // Key:    Value
  //'first': 'partridge',
  //'second': 'turtledoves',
  //'fifth': 1,

  // var nobleGases = {2: 'helium', 10: 'neon', 18: 2};

  // print(gifts);
  //print(nobleGases);

  //LANGKAH 3
  var mhs1 = Map<String, String>();
  var gifts = Map<String, String>();

  var mhs2 = Map<int, String>();
  var nobleGases = Map<int, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  mhs1['nama'] = 'Kholifah';
  mhs1['nim'] = '411253006';

  mhs2[1] = 'Kholifah';
  mhs2[2] = '411253006';

  gifts['nama'] = 'Kholifah';
  gifts['nim'] = '411253006';

  nobleGases[1] = 'Kholifah';
  nobleGases[3] = '411253006';

  // Output
  print("mhs1: $mhs1");
  print("mhs2: $mhs2");
  print("gifts: $gifts");
  print("nobleGases: $nobleGases");
}
