
import 'dart:io';
import 'dart:math';


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
{
  List <String> word = [];
  List <String> input = File("NumsTask1.txt").readAsLinesSync();
  for (var j in input)
  {
    input = j.split(', ');
  }
  try
  {
    word = input;
  }
  catch(e)
  {
    print('Ввели не слово');
  }

  print(word);

  for ( int i = 0; i < word.length; i++)
  {
    if (word[i].length % 2 != 0)
    {
      stdout.write(" ${word[i]} ");
    }
  }
}

void task2()
{
  List <String> word = [];
  List <String> input = File("NumsTask2.txt").readAsLinesSync();
  try
  {
    word = input;
  }
  catch(e)
  {
    print('Ввели не слово');
  }
  for (int i = 0; i < word.length; i++)
  {
    stdout.write(" ${word[i]} ");
  }

}

void task3()  
{
  stdout.write("Введите число: ");
  int number = int.parse(stdin.readLineSync()!);
  
  if (number % 10 == 0)
  {
    print('true');

  }
  else
  {
    print('false');
  }
}

void task4()
{
  stdout.write("Введите число: ");
  int num1 = int.parse(stdin.readLineSync()!);
  stdout.write("Введите второе число: ");
  int num2 = int.parse(stdin.readLineSync()!);
  stdout.write("Введите число на которое делить: ");
  int a = int.parse(stdin.readLineSync()!);
  int sum = 0;
  if (num1 < 0 && num2 <0)
  {
    print('error');
    return;
  }
  if (num1 % a == 0  && num2 % a == 0 )
  {
    sum = num1 + num2;
    print('Сумма чисел: $sum');
  }
  else
  {
    print('Не делится.');
  }

  // print(sum);

}

void task5()
{
  stdout.write('Введите количество столбцов: ');
  int n = int.parse(stdin.readLineSync()!);
  stdout.write('Введите количество строк: ');
  int m = int.parse(stdin.readLineSync()!);
  List<List<int>> matrix = List.generate(n, (_) => List.generate(m + 1, (_) => Random().nextInt(2)));
  for ( int i = 0; i < n; i++)
  {
    int count = 0;
    for ( int j = 0; j < m; j++)
    {
      if (matrix[i][j] == 1)
      {
        count++;
      }
    }
    if (count % 2 != 0)
    {
      matrix[i][m] = 1;
    }
    else
    {
      matrix[i][m] = 0;
    }
  }
  print('Начальная матрица: ');
  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < m; j++)
    {
      stdout.write(' ${matrix[i][j]}');
    }
    print('');
  }
  print('Итоговая матрица: ');
  for (int i = 0; i < matrix.length; i++)
  {
    stdout.write('${matrix[i]}\n');
  }
}

void task6()
{
  List<double> polozhitelnie = [];
  List<double> otricatelnie = [];
  List<double> number = List.generate(Random().nextInt(5) + 1, ((_) => Random().nextDouble() * (20) + -10));
  for (int i = 0; i < number.length; i++)
  {
    if(number[i] < 0)
    {
      otricatelnie.add(number[i]);
    }
    else
    {
      polozhitelnie.add(number[i]);
    }
  }
  print('Массив: $number');
  print('Массив положительных чисел: $polozhitelnie');
  print('Массив отрицательных чисел: $otricatelnie');
}