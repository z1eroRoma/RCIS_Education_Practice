import 'dart:io';
import 'dart:math';
import 'dart:core';

void main() {
  stdout.write('Введите номер задания: ');
  String number = stdin.readLineSync()!;
  switch (number) {
    case '1':
      task1();
      break;

    case '2':
      task2();
      break;

    case '3':
      task3();
      break;

    case '4':
      task4();
      break;

    case '5':
      task5();
      break;
  }
}

void task1() {
  int x = 100;
  List<int> list = List.filled(33, 0);
  for (int i = 0; i < list.length; i++) {
    list[i] = x - 3;
    x -= 3;
  }
  print(list);
}

void task2() {
  int x = 1;
  List<int> list = List.filled(50, 0);
  for (int i = 0; i < list.length; i++) {
    list[0] = 1;
    list[i] = x + 0;
    x += 2;
  }
  print(list);
}

void task3() {
  List<List<int>> list = List.generate(4, (_) => List.filled(4, 1));
  for (int x = 1; x < 4; x++) {
    for (int z = 1; z < 4; z++) {
      list[x][z] = list[x - 1][z] + list[x][z - 1];
    }
  }
  for (int x = 0; x < 4; x++) {
    for (int z = 0; z < 4; z++) {
      stdout.write('${list[x][z]}\t');
    }
    stdout.write('\n');
  }
}

void task4() {
  List<List<int>> temperature = List.generate(
      12, (i) => List.generate((30), (j) => Random().nextInt(24) - 5));
  for (int i = 0; i < temperature.length; i++) {
    stdout.write('${i + 1} месяц \t');
    for (int j = 0; j < temperature[i].length; j++) {
      stdout.write('${temperature[i][j]}  ');
    }
    print('\n');
  }
  List<int> res = Avg(temperature);
  res.sort();
  print(res);
}

List<int> Avg(List<List<int>> temperature) {
  List<int> avg = [];
  for (int i = 0; i < temperature.length; i++) {
    double sum = 0;
    for (int j = 0; j < temperature[i].length; j++) {
      sum += temperature[i][j];
    }
    avg.add(sum ~/ temperature[i].length);
  }
  return avg;
}

void task5() {
   int i = 0;
  List<List<int>> temperature = List.generate(12, (i) => List.generate((30), (j) => Random().nextInt(24)-5));
  Map<String, List<int>> map = {
    'Январь':temperature[i],
    "Февраль":temperature[i+1],
    'Март':temperature[i+2],
    'Апрель':temperature[i+3],
    'Май':temperature[i+4],
    'Июнь':temperature[i+5],
    'Июль':temperature[i+6],
    'Август':temperature[i+7],
    'Сентябрь':temperature[i+8],
    'Октябрь':temperature[i+9],
    'Ноябрь':temperature[i+10],
    'Декабрь':temperature[i+11]

  };
  for(var key in map.keys){

  
  print(map[key]);}

  avg(map, temperature);
  }
Map avg ( Map<String, List<int>> map,List<List<int>> res ){
  Map<String, int> otv = {
    'Январь':0,
    "Февраль":0,
    'Март':0,
    'Апрель':0,
    'Май':0,
    'Июнь':0,
    'Июль':0,
    'Август':0,
    'Сентябрь':0,
    'Октябрь':0,
    'Ноябрь':0,
    'Декабрь':0
  };
  List<int> avg = [];
  for(var key in map.keys){
  for(int i = 0; i<res.length; i++){
    double sum = 0; 
    for(int j = 0; j<res[i].length; j++){
      sum+= res[i][j];
    }
    otv[key] = (sum~/res[i].length);
  }
  }
  print(otv);
  return otv;
}

 