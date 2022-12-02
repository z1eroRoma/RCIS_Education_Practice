
import 'dart:io';

void main()
{
 
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




  }
}

void task1()
{
  List <int> num = [0];
  int min = 100000;
  int sum = 1;
  int mini = 0;
  List <String> input = File("NumsTask1.txt").readAsLinesSync();
  for (var j in input)
  {
    input = j.split(' ');
  }
  try 
  {
    num = input.map(int.parse).toList();
  }
  catch(e)
  {
    print('Ввели не число');
  }

  for (int i = 0; i < num.length; i++)
  {
    if (num[i]  < min)
    {
      min = num[i];
      mini = i;
    }
  }
  for ( int i = mini; i < num.length; i++)
  {
    sum *= num[i];
  }

  print('Произведение элементов расположенных после минимаьного: $sum');

}

void task2()
{
  List <double> nums = [];
  List <String> input = File("NumsTask2.txt").readAsLinesSync();
  var output = File("NumsTask2.txt").openWrite();
  for (var x in input)
  {
    input = x.split('; ');
  }
  try
  {
    nums = input.map(double.parse).toList();
  }
  catch(e)
  {
    print('Введено не число');
  }

  nums.sort(((a, b) => a.compareTo(b)));

  print(nums);

  output.write(nums);  
}

void task3()
{
  int min = 10000;
  int mini = 0;
  int sum = 0;
  double sum1 = 0;
  List <int> nums = [0];
  List <String> input = File("NumsTask3.txt").readAsLinesSync();
  for (var z in input)
  {
    input = z.split(' ');
  }
  try 
  {
    nums = input.map(int.parse).toList();
  }
  catch(e)
  {
    print('Ввели не число');
  }

  for (int i = 0; i < nums.length; i++)
  {
    if (nums[i]  < min)
    {
      min = nums[i];
      mini = i;
    }
  }
  for (int i = 0; i < mini; i++)
  {
    sum = nums[i] + sum;
    sum1 = sum / mini;
  }
  print('Среднее арефмитическое до минимального элемента: $sum1');
}

void task4()
{
  int maxi = 0;
  List <int> num = [0];
  int sum = 0;
  List <String> input = File("NumsTask4.txt").readAsLinesSync();
  int max = num[0];
  for (var z in input)
  {
    input = z.split(' ');
  }
  try 
  {
    num = input.map(int.parse).toList();
  }
  catch(e)
  {
    print('Ввели не число');
  }
  for (int i = 0; i < num.length; i++)
  {
    if (num[i]  > max)
    {
      max = num[i];
      maxi = i;  
    }
  }
  for (int i = 1; i < num.length; i++)
  {
    if (num[i] > max)
    {
      max = num[i];
      maxi = i;
    }
  }

  for (int i = 0; i < max; i++)
  {
    if (num[i] == max - 1 )
    {
      sum += num[i];

    }
  }


  
  print(max);
  print(maxi);
  print("Сумма отличающихся от максимального на 1: $sum ");



}

void task5()
{
  int min = 10000;
  int max = -10000;
  int mini = 0;
  int maxi = 0;
  int sum = 0;
  int b = 0;
  double sum1 = 0;
  List <int> num = [0];
  List <String> input = File("NumsTask5.txt").readAsLinesSync();
  for (var z in input)
  {
    input = z.split(' ');
  }
  try 
  {
    num = input.map(int.parse).toList();
  }
  catch(e)
  {
    print('Ввели не число');
  }

   for (int i = 0; i < num.length; i++)
  {
    if (num[i]  < min)
    {
      min = num[i];
      mini = i;
    }
  }
  for (int i = 0; i < num.length; i++)
  {
    if (num[i]  > max)
    {
      max = num[i];
      maxi = i;  
    }
  }
  if (mini < maxi)
  {
    for (int i = mini + 1; i < maxi; i++)
    {
      sum += num[i];
      b++;
    }
  }
  sum1 = sum / b++;

  print(num.length);
  print(sum);
  print(sum1);


}


