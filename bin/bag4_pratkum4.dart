void main() {
  //var list = [1, 2, 3];
  //var list2 = [0, ...list];

  //print(list); // perbaikan dari list1 → list
  //print(list2);
  //print(list2.length);

  // LANGKAH 3
  var list1 = [1, 2, null];
  print(list1);
  var list3 = [0, ...?list1];
  print(list3.length);
  var nim = ["411253006"];
  var listGabung = [...list3, ...nim];
  print(listGabung);
}
