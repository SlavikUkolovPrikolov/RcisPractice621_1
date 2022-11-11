import 'dart:io';
import 'dart:math';
import 'dart:async';

void main() {
//1.1
  /*
  List nums = [];

  for(int i = 0; i <= 10; i++) {
    var random = new Random();
    int a = random.nextInt(100);
    nums.add(a);                                    //  Задание 1
    nums.sort();
  }  
  print(nums);
  print(nums.first); 
  */
  


  /*
  List nums = [];
  int sum = 0;
  int mult = 1;
  double mid = 0;

  for(int i = 1; i <= 10; i++) {
    try {
      int a = int.parse(stdin.readLineSync()!);

      if (a > 0) {
        nums.add(a);
        nums.sort;
      }
      else {
        i = 10;                                                 // Задание 2
      }
    }
    catch(a) {
      print("Вы ввели не число. Исправьтесь, пожалуйста.");
    }
  }
  for(int i = 0; i < nums.length; i++) {
    int d = nums[i];
    sum += d;
    mult *= d;
  }
  mid = sum / nums.length;
  print("Сумма элементов вашего массива = $sum, Произведение чисел вашего массива = $mult, Среднее среди всех элементов массива = $mid"); 
  */


  
  /*
  List<String> words = [];
  String word = 'text';
  int min = 0;
  int max = 0;
  int minLength = 99;
  int maxLength = 0;
  int i = 0;

  while(word != "") {
    word = stdin.readLineSync()!;
    words.add(word);    
                                                                      // Задание 3
    if (word.length < minLength && word.length != 0) {
      minLength = word.length;
      min = i;                                                            
    }
    if (word.length > maxLength && word.length != 0) {
      maxLength = word.length;
      max = i;
    }
    i++;
  }
  print("Самый длинный элемент массива = ${words[max]}, самый короткий элемент массива = ${words[min]}"); 
  */   


  
  /*
  List nums = [];
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  for(int i = 0; i <= 10; i++) {
    var random = new Random();                               //  Задание 4
    int c = random.nextInt(b) + a;
    nums.add(c);
    nums.sort();
  }
  print(nums); 
  */



  /*
  String string = stdin.readLineSync()!;                
  List<String> string2 = string.split(" ");               
  
  string2.insert(0, "Start");                              
  string2.add("End");                                          //  Задание 5
  string = string2.join(" ");

  print(string2.length - 2);                              
  print(string); 
  */                                       





//1.2
  /*
  List nums = [];
  int a = 100;

  for (int i = 0; i < 100; i++) {
    a = a - 3;                                               //  Задание 1
    nums.add(a);
  }
  print(nums); 
  */



  /*
  List nums = [];
  
  for(int i = 1; i <= 100; i++) {
    if ((i % 2) == 0) {}
    else {                                                   // Задание 2
    nums.add(i);
    }
  }
  print(nums); 
  */



  /*
  var nums = List.generate(4, (i) => List.filled(4,1), growable: true);

  for(int i = 0; i < 4; i++) {
    for(int j = 0; j < 4; j++) {
      if (i >= 1 && j >= 1) {                                       // Задание 3
        nums[i][j] = nums[i - 1][j] + nums[i][j - 1];
      }
    }
  }
  print(nums); 
  */


  
  /*
  var temperature = List.generate(12, (i) => List.filled(30, 0), growable: true);
  List month = [];
  double sum = 0;

  for(int i = 0; i < 12; i++) {
    for(int j = 0; j < 30; j++) {
      var random = new Random();
      int a = random.nextInt(50) - 30;
      temperature[i][j] += a;
    }                                                                    // Задание 4
  }
  for(int i = 0; i < 12; i++) {
    for(int j = 0; j < 30; j++) {
      sum += temperature[i][j];
    }
    double mid = sum / 30;
    month.add(mid);
  }
  print(month);
  month.sort();
  print(month); 
  */




  /*
  Map<String, double> temperature = {};
  List months = ['Январь', 'Февраль', 'Март', 'Апрель', 'Май', 'Июнь', 'Июль', 'Август', 'Сентябрь', 'Октябрь', 'Ноябрь', 'Декабрь'];
  var temperature2 = List.generate(12, (i) => List.filled(30, 0), growable: true);
  List monthMid = [];
  int sum = 0;

  for(int i = 0; i < 12; i++) {
    for(int j = 0; j < 30; j++) {
      var random = new Random();
      int a = random.nextInt(50) - 30;
      temperature2[i][j] += a;
    }
  }
  for(int i = 0; i < 12; i++) {                                      //  Задание 5
    for(int j = 0; j < 30; j++) {
      sum += temperature2[i][j];
    }
    double mid = sum / 30;
    monthMid.add(mid);
  }
  
  for(int i = 0; i < 12; i++) {
    temperature[months[i]] = monthMid[i];
  }
  print(temperature); 
  */
  





//1.3
  /*
  var inputFile = File('files//1.3//input.txt');
  var result = File('files//1.3//output.txt').openWrite();
  var contentInput = inputFile.readAsLinesSync();
  List nums = contentInput;
  List LuckyNums = nums[0].split(" ");
  int b = 2;
  for (int f = 0; f < int.parse(nums[1]); f++) {
  int k = 0;
  List bilet = nums[b].split(" ");
  for (int i = 0; i < LuckyNums.length; i++) {
        for (int g = 0; g < 5; g++) {
          if (LuckyNums[i] == bilet[g]) {
            ++k;
          } else {
            k = k;                                      // Задание 1
          }
        }
      }
   ++b;
   if (k >= 3) {
      print("Lucky");
      result.write("Lucky\n");
    } else {
    print("Unlucky");
   result.write("Unlucky");
    }
  }
  ++b;
  */



  /*
  var numsFile = File('files//1.3//nums.txt');
  var nums = numsFile.readAsStringSync();
  List nums2 = nums.split(' ');

  print(nums2);
  for (int i = 0; i < nums2.length; ++i) {
  if (double.parse(nums2[i]) % 2 == 0)
  {
  nums2.remove(nums2[i]);                           //Задание 2
  }
  else {
  continue;
  }
  }

  print(nums2);
  numsFile.writeAsString("$nums2"); 
  */


  /*
  var fileNums = File('files//1.3//height.txt');
  var contentFile = fileNums.readAsLinesSync();
  List nums = contentFile;
  print(nums);
  int cont = 0;
  for (int i = 0; i < nums.length; ++i) {
    for (int j = 1; j < nums.length; ++j) {
      int temp = 0;
      if (int.parse(nums[i]) < int.parse(nums[j])) {
        temp = int.parse(nums[i] * (j - i));               // Задание 3
      } else {
        temp = int.parse(nums[j] * (j - i));
      }
      if (cont < temp) {
        cont = temp;
      } else {
        continue;
      }
    }
  }
  print(cont);
  */


//1.4

  /*
  int a = int.parse(stdin.readLineSync()!);
  int mult = 1;

  for(int i = 1; i <= a; i++) {
    if ((i % 3) == 0) {
      mult *= i;                                     //Задание 1
    }
    else {}
  }

  print(mult); 
  */



  /*
  var nums2 = File('files//1.4//numsTask2.txt');
  var read = nums2.readAsStringSync();
  List<String> nums = read.split(";");
  List<int> positive = [];

  print(nums);
  int sum = 0;
  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) > 0) {
      positive.add(int.parse(nums[i]));                        // Задание 2
    }
  }
  for (int i = 0; i < positive.length; i++) {
    sum += (positive[i]);
  }

  print(sum); 
  */



  /*
  var nums2 = File('files//1.4//numsTask3.txt');
  var read = nums2.readAsStringSync();
  List<String> nums = read.split(",");
  List<int> positive = [];

  print(nums);

  for (int i = 0; i < nums.length; i++) {
  if (int.parse(nums[i]) > 0) {
  positive.add(int.parse(nums[i]));                 // Задание 3
  }
  }
  positive.sort();
  print(positive);

  int min = positive.first;
  int max = positive.last;
  double rel = min / max;
  print(rel);
  */



  /*
  var numsFile = File('files//1.4//numsTask4.txt');
  var nums = numsFile.readAsStringSync();
  List numbers = nums.split(" ");

  print(numbers);
  int a = 0;
  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] == numbers[i + 1]) {                             // Задание 4
      ++a;
    } else {
      continue;
    }
  }
  print(a); 
  */




  /*
  print("Введите x");
  double x = double.parse(stdin.readLineSync()!);
  print("Введите y");
  double y = double.parse(stdin.readLineSync()!);
  bool x1;
  bool y1;

  if (-1 < x && x < 3) {
    x1 = true;
  } else {
    x1 = false;
  }                                                            // Задание 5
  if (-2 < y && y < 4) {
    y1 = true;
  } else {
    y1 = false;
  }
  
  if (x1 == true && y1 == true) {
    print('Точка принадлежит заштрихованной области');
  } else {
    print('Точка не принадлежит заштрихованной области');
  } 
  */

  



  

//1.5
  /*
  var numstask1 = File('files//1.5//numsTask1.txt');
  var content = numstask1.readAsStringSync();
  List<String> nums = content.split(" ");
  int multiply = 1;
  int min = 999;
  int minIndex = 0;
  for (int i = 0; i < nums.length; i++) {
    if (int.parse(nums[i]) < min) {
      min = int.parse(nums[i]);                              // Задание 1
      minIndex = i;
    } else {
      continue;
    }
  }
  for (int i = minIndex; i < nums.length; i++) {
    multiply *= int.parse(nums[i]);
  }
  print(multiply);
  */



  /*
  var numstask2 = File('files//1.5//numsTask2.txt');
  var content = numstask2.readAsStringSync();
  List<String> nums = content.split(";");
  print(nums);
  bool isSorted = false;
  while (!isSorted) {
    isSorted = true;
    for (int i = 0; i < nums.length - 1; i++) {
      if (double.parse(nums[i]) > double.parse(nums[i + 1])) {      // Задание 2
        var temp = nums[i];
        nums[i] = nums[i + 1];
        nums[i + 1] = temp;
        isSorted = false;
      }
    }
  }
  numstask2.writeAsStringSync(nums.toString());
  */


  /*
  var numsFile = File('files//1.5//numsTask3.txt');
  var nums = numsFile.readAsStringSync();
  List numbers = nums.split(' ');
  int min = 0;
  num sum = 0;
  List numbers2 = [];

  for(int i = 0; i < numbers.length; i ++) {
    numbers2.add(int.parse(numbers[i]));
  }
  print(numbers2);

  List minimal = [];
  for(int i = 0; i < numbers2.length; i++) {
    minimal.add(numbers2[i]);
  }                                                              //Задание 3
  minimal.sort();
  min = minimal.first;
  print(min);

  int indexMin = numbers2.indexOf(min);
  for(int i = 0; i < indexMin; i++) {
    sum += numbers2[i];
  }

  List numbers3 = [];
  for(int i = 0; i < indexMin; i++) {
    numbers3.add(numbers2[i]);
  }
  double mid = sum / numbers3.length;

  print(mid); 
  */




  /*
  var numsFile = File('files//1.5//numsTask4.txt');
  var nums = numsFile.readAsStringSync();
  List numbers = nums.split(' ');
  int max = 0;
  List numbers2 = [];

  for(int i = 0; i < numbers.length; i ++) {
    numbers2.add(int.parse(numbers[i]));
  }
  print(numbers2);

  for(int i = 0; i < numbers2.length; i++) {
    if(numbers2[i] > max) {                                          // Задание 4
      max = numbers2[i];
    }
    else {}
  }
  print(max);

  int a = max - 1;
  int b = max + 1;
  int sum = a + b;
  print(sum); 
  */

  
  
  /*
  var numsFile = File('files//1.5//numsTask5.txt');
  var nums = numsFile.readAsStringSync();
  List numbers = nums.split(' ');
  int mult = 1;
  int max = 0;
  int min = 0;
  List minimal = [];
  print(numbers);

  for(int i = 0; i < numbers.length; i++) {
    if(int.parse(numbers[i]) > max) {
      max = int.parse(numbers[i]);
    }
    else {}
  }

  print('max = $max');                                   // Задание 5
  for(int i = 0; i < numbers.length; i++) {
    if(int.parse(numbers[i]) < max) {
      minimal.add(int.parse(numbers[i]));
    }
    else {}
  }
  minimal.sort();
  min = minimal.first;
  print('min = $min');

  List numbers2 = [];
  for(int i = 0; i < numbers.length; i ++) {
    numbers2.add(int.parse(numbers[i]));
  }
  int index1 = numbers2.indexOf(min);
  int index2 = numbers2.indexOf(max);
  for(int i = (index1 + 1); i < index2; i++) {
    mult *= int.parse(numbers[i]);
  }
  print(mult); 
  */

  
  


// 1.6
  
  /*
  var txtFile = File('files//1.6//wordsTask1.txt');
  var txt = txtFile.readAsStringSync();
  List<String> text = txt.split(" ");
  List text2 = [];

  print(text);                                                 // Задание 1
  for(int i = 0; i < text.length; i++) {
    if((text[i].length % 2) == 0) {
      text2.add(text[i]);
    } else {
      continue;
    }
  }
  print(text2);
  */
  
  
  

  /*
  var txtFile = File('files//1.6//wordsTask2.txt');
  var txt = txtFile.readAsLinesSync();
  String textLine = '';
  for(int i = 0; i < txt.length; i++) {                          // Задание 2
    textLine += txt[i];
    textLine += ' ';
  }
  print(textLine);
  */





  /*
  try {
    int a = int.parse(stdin.readLineSync()!);

    if ((a % 2) == 0 && (a % 10) == 0) { 
      print(true);
    }                                                                    // Задание 3
    else {
      print(false);
    } 
  } catch (a) {
    print('Введите корректные данные');
  }
  */




  /*
  int a = 10;
  int sum = 0;
  try {
    for(int i = 0; i <= 10; i++) {
      int b = int.parse(stdin.readLineSync()!);
      if(b > 0) {
        if((b % a) == 0) {
          sum += b;
        } else {
          continue;                                       // Задание 4
        }
      } else {
        i = 10;
      }
    }
  } catch (b) {
    print('Введите корректные данные');
  }
  print(sum);  
  */



  /*
  int n = int.parse(stdin.readLineSync()!);
  int m = int.parse(stdin.readLineSync()!);

  Random random = new Random();
  List<List<int>> matrix = [];

  for (int i = 0; i < n; i++) {
    matrix.add([]);
    for (int j = 0; j < m; j++) {
      matrix[i].add(random.nextInt(2));
    }                                                    // Задание 5
  }

  for (int i = 0; i < n; i++) {
    int temp = 0;
    for (int j = 0; j < m; j++) {
      if (matrix[i][j] == 1) {
        temp++;
      }
    }
    if (temp % 2 == 0) {
      matrix[i].add(0);
    } else {
      matrix[i].add(1);
    }
  }

  for (int i = 0; i < n; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    print("");
  }
  */




  /*
  List negativeNums = [];
  List positiveNums = [];
  double _generateDouble2(double minValue, double maxValue, int precision) {
    final random = new Random();
    final doubleRandom = minValue + (maxValue - minValue) * random.nextDouble();
    return double.parse(doubleRandom.toStringAsFixed(precision));
  } 
  var rng = new Random();
  var list1 = List.generate(rng.nextInt(20), (int index) => _generateDouble2(-100.5, 100.5, 1));
  print(list1);                                                                                      // Задание 6
  for (int i = 0; i < list1.length; i++) {
    if (list1[i] > 0) {
      positiveNums.add(list1[i]);
    }
    if (list1[i] < 0) {
      negativeNums.add(list1[i]);
    }
  }
  print("Положительные числа \n $positiveNums");
  print("Отрицательные числа \n $negativeNums");
  */
}