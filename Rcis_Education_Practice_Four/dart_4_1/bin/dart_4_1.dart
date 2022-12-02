import 'dart:io';

void main()
{
  stdout.write('Введите номер задания: ');
  String number = stdin.readLineSync()!;
  switch (number) 
  {
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

    case '6':
      task6();
      break;
  }
}

void task1() 
// задание 4.1
{
  stdout.write('Введите число: ');
  int n = int.parse(stdin.readLineSync()!);
  int c = 1;
  for (int i = 1; i <= n; i++)
  {
    if ((i % 3) == 0) 
    {
      c *= i;
    }
  }
  print(c);
}

void task2()
// задание 4.2
{
  List <double> num = [];
  List <String> input = File("NumsTask2.txt").readAsLinesSync();
  for (var z in input)
  {
    input = z.split(';');
  }
  try 
  {
    num = input.map(double.parse).toList();
  }
  catch(e)
  {
    print('Введено не число');
  }
  double x = 0;
  for (int i = 0; i < num.length; i++)
  {
    if (num[i] > 0)
    {
      x += num[i];
    }
    if (num[i] == 0)
    {
      break;
    }
  }
  print(x);
}

void task3()
// задание 4.3
{
  List <int> nam = [];
  List <String> input = File("NumsTask3.txt").readAsLinesSync();
  for (var j in input)
  {
    input = j.split(', ');
  }
  try 
  {
    nam = input.map(int.parse).toList();
  }
  catch(e)
  {
    print('Введено не число');
  }
  int max = nam[0];
  int min = nam[0];
  for (var i = 1; i < nam.length; i++)
  {
    if (nam[i] == 0)
    {
      break;
    }
    if (max < nam[i])
    {
      max = nam[i];
    }
    if (min > nam[i])
    {
      min = nam[i];
    }
  }
  print(max);
  print(min);
  var  otnoshenie= max / min;
  print('$max больше $min в $otnoshenie раз');
}

void task4()
// задание 4.4
{
  List <String> input = File("NumsTask4.txt").readAsLinesSync();
  for (var j in input)
  {
    input = j.split(' ');
  }
  int amount = 0;
  List <int> sum = input.map(int.parse).toList();
  for (var i = 0; i < sum.length - 1; i++)
  {
    if (sum[i] == sum[i + 1])
    {
      amount++;
    }
  }
  print('Количество одинаковых чисел стоящих рядом $amount');
}

void task5()
// задание 4.5
{
  stdout.write('Введите a: ');
  int number1 = int.parse(stdin.readLineSync()!);
  stdout.write('Введите b: ');
  int number2 = int.parse(stdin.readLineSync()!);
  if ((number1 <= 3) && (number2 <= 4) && (number1 >= -1) && (number2 >= -2))
  {
    print('Точка с координатами $number1,$number2 принадлежит заштрихованной области.');
  }
  else 
  {
    print('Точка с координатами $number1,$number2 не принадлежит заштрихованной области. ');
  }
}

void task6()
// задание 4.6
{
  stdout.write('Введите а: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Введите b: ');
  double b = double.parse(stdin.readLineSync()!);

  double i = (-2 - a) * (2 - -3) - (0 - -2) * (-3 -b);
  double j = (0 - a) * (-3 - 2) - (2 - 0) * (2 - b);
  double x = (2 - a) * (-3 - -3) - (-2 - 2) * (-3 - b);

  if ((i >= 0 && j >= 0 && x >= 0) || (i <= 0 && j <= 0 && x <= 0))
  {
    print(' Точка с координотой $a,$b принадледит заштрихованной области');
  }
  else 
  {
    print('Точка с координатой $a,$b не принадлежит заштрихованной области');
  }

}
