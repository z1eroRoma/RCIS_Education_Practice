import 'dart:io';
import 'dart:convert';
import 'dart:async';

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
  }
}

void task1() async {
  String numsInFile = "";
  bool isNumber = false;
  List<int> height = [];
  File file = File("");
  List<String> lines = [];

  try {
    file = File('input.txt');
    lines = file.readAsLinesSync();
  } catch (e) {
    print("Ошибка. Отсутсвует файл");
    file = await File('input.txt').writeAsString("");
  }

  for (int k = 0; k < lines.length; ++k) {
    lines[k] += " ";
    for (int i = 0; i < lines[k].length; ++i) {
      if (lines[k][i] != " " && lines[k][i] != ",") {
        isNumber = true;
        numsInFile += lines[k][i];
        continue;
      }
      if ((lines[k][i] == " " || lines[k][i] == ",") && isNumber == true) {
        try {
          height.add(int.parse(numsInFile));
        } catch (e) {
          print("\nЭто не число => $numsInFile \n");
        }
        numsInFile = "";
        isNumber = false;
        continue;
      }
    }
  }
  print("height = $height");

  int maxVolume = 0;

  for (int i = 0; i < height.length; ++i) {
    for (int j = i + 1; j < height.length; ++j) {
      if (height[i] > height[j]) {
        maxVolume =
            height[j] * (j - i) > maxVolume ? height[j] * (j - i) : maxVolume;
      } else {
        maxVolume =
            height[i] * (j - i) > maxVolume ? height[i] * (j - i) : maxVolume;
      }
    }
  }

  print(maxVolume);
}

void task2() {
  String chislo = '';
  String otv = '';
  File('nums.txt').readAsString().then((String a) {
    for (int k = 0; k < a.length; k++) {
      for (int i = 0; i < a[k].length; i++) {
        if (a[k][i] != " ") {
          chislo += a[k][i];
        }
        if (a[k][i] == " ") {
          try {
            if (int.parse(chislo) % 2 != 0) {
              otv += "$chislo ";
            }
            chislo = "";
          } catch (e) {
            print('это не число!');
            continue;
          }
        }
      }
      var zxc1 = File('nums.txt').writeAsString(otv);
    }
  });
}

void task3() {
  var nums = '';
  var otv = '';
  List<int> chisla = [];
  File('nams.txt').readAsString().then((String a) {
    for (int k = 0; k < a.length; k++) {
      for (int i = 0; i < a[k].length; i++) {
        if (a[k][i] != " ") {
          nums += a[k][i];
        }
        if (a[k][i] == " ") {
          try {
            int nums1 = int.parse(nums);
            otv += "$nums ";
            nums = "";
            chisla.add(nums1);
          } catch (e) {
            print('это не число!');
            continue;
          }
        }
      }
    }
    ne_main(chisla);
  });
}

void ne_main(List<int> height) {
  int left = 0;
  int right = height.length - 1;
  int max = 0;

  while (left != right) {
    int distance = (left - right).abs();
    int otv = 0;
    if (height[left] < height[right]) {
      otv = height[left] * distance;
      left++;
    } else {
      otv = height[right] * distance;
      right--;
    }
    if (otv > max) {
      max = otv;
    }
  }
  print(max);
}
