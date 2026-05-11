void main() {
  // var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  //print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};
  var names3 = {}; // tetap Map

  // Tambah data ke names1 (pakai add)
  names1.add("Kholifah");
  names1.add("411253006");

  // Tambah data ke names2 (pakai addAll)
  names2.addAll({"Kholifah", "411253006"});

  // Contoh isi Map (names3)
  names3["nama"] = "Kholifah";
  names3["nim"] = "411253006";

  // Output
  print("names1 (Set - add): $names1");
  print("names2 (Set - addAll): $names2");
  print("names3 (Map): $names3");
}
