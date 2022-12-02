import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('Ведите номер задания: ');
  String namber = stdin.readLineSync()!;
  switch(namber){

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
  List<int> mass = List.generate(10, (i) => Random().nextInt(50) + 0) ;
  int nim = 0;
  int a = 0;
  int b = 0;
  mass.sort((a, b) => a.compareTo(b));
  mass[0];
  for (int i = 1; i < mass.length; i++) {
    if(mass[i] < mass[nim]) {
      nim = i;
    }
  }
  print(mass);
  print(mass[0]);
  print(nim);
}

void task2 () {
  List<int> list = [];
  int num = 1;
  int sum = 0;
  int proizvedenie = 1;
  try {
    while(num!= 0){
      stdout.write('Введите число: ');
      int x = int.parse(stdin.readLineSync()!);
      list.add(x);
      if( x == 0) {
        break;
      } else {
        sum += x;
        proizvedenie *= x;
      }
    }
     double srednee = sum / (list.length);
    print(list);
    print('$sum - сумма \n $proizvedenie - произведение \n $srednee - среднее');
  }
  catch (errore) {
    print('вы не ввели число');
  }
  finally {
    print('завершение работы');
  }
}

void task3() {
  List<int> list = [];
  int max = 0;
  int min = 0;
    while(true){
      stdout.write('Введите число: ');
      String y = stdin.readLineSync()!;
      if( y == '') {
        break;
      }
      int x = int.parse(y);
      list.add(x);
    }
    for (int i = 0; i < list.length; i++ ) {
      if ("${list[min]}".length > "${list[i]}".length) {
        min = i;
      }
      if ("${list[max]}".length < "${list[i]}".length) {
        max = i;
      }
    }
  print(list);
  print('Max - [$max - ${list[max]}] \n Min - [$min - ${list[min]}]');
}

void task4() {
 try{
  stdout.write('введите наименьший предел: ');
  int minimalno = int.parse(stdin.readLineSync()!);
  stdout.write('введите наибольший предел: ');
  int maksimalno = int.parse(stdin.readLineSync()!);
  List<int> list = randtoMass(minimalno, maksimalno);
  stdout.write('{');
  for(int i = 0; i<list.length; i++){
    stdout.write('${list[i]} ');
  }
  stdout.write('}');
 }
 catch(errors){
   print('вы ввели не число!!!');
 }
}
List<int> randtoMass(int minimalno, int maksimalno){
  List<int> random = List.generate(10, (i) => Random().nextInt(maksimalno-minimalno)+minimalno);
  return random;
}

void task5() {
  
  stdout.write('Введите строку: ');
  String stroka = stdin.readLineSync()!;
  int tekst = 1;
  for(int i = 0; i < stroka.length; i++){
    if(stroka[i] == ' '){
      tekst++;
    }

  } 
  if(stroka == ''){
    tekst = 0;
  }
  print('Start - $tekst END');
}














