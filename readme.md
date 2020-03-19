# Тask 2
Task 2 состоит из шести подзадач, которые вам необходимо выполнить. 
Все задачи находятся в корне проекта в папке Exercises и идут в порядке усложения 
1-вая задача самоя простая, 6-ая наиболее сложная в рамках Task2.

Структура папки Exercises представленна ниже
![Image of Exercises](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/Exercises.png)

## Детали по каждой задаче вы сможете найти в ниже представленных файлах:
  - DateFormatter.pdf
  - TimeInWords.pdf
  - Abbreviation.pdf
  - Pangram.pdf
  - Blocks.pdf
  - Fibonacci numbers.pdf

## Описание 
Каждая задача состоит из двух файлов .h и .m, рассмотрим первое задание
в папке /Exercises/1 вы найдете два файла:
- Dates.h
- Dates.m

В файле Dates.m вы сможете найти функцию 
```
// Complete the following fuction
- (NSString *)textForDay:(NSString *)day month:(NSString *)month year:(NSString *)year {
    return @"";
}
```
 в которой вам надо будет написать код, для решения поставленной задачи. 
 Сама задача описана в DateFormatter.pdf. Для того, чтобы проверить верно ли вы решили 
 задачу, вам необходимо будет запустить тесты. Для того чтобы запустить тесты неоюходимо 
 выбрать любой доступный симулятор из списка

![Image of Simulator1](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/Simulator1.png)
![Image of Simulator2](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/Simulator2.png)

и нажать ⌘U или через меню Product->Test

![Image of RunTests](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/RunTests.png)

после того как все отработает вы сможете увидеть детали выполнения по каждой из задач. 
Если ваше решение верно то тесты отобразятся с зеленым маркером если нет то красным. 

![Image of TestDetails](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/TestDetails.png)

Но в данном задании не вссе будет так гладко как в Task1, если вы запустите тесты то скорее вссего получите ошибку,
```EXC_BAD_ACCESS``` - любимая ошибка всех iOS разработчиков, котрая представленна ниже 
![Image of BlockIssue1](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/BlockIssue1.png)
и прежде чем приступить к выполнению задач, вам придется решить возникшую проблему, иначе тесты не смогу завершится никогда.
Для этого вам надо будет посмотреть внимательно на Blocks.h
![Image of BlockIssue2](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/BlockIssue2.png)
и реализовать требуемые блоки в Blocks.m файле, пусть по началу они будут пустыми и ничего не делать и возвращать нейкое пустое значение, 
но при этом все тесты смогу отработать. И вы сможете нормально продолжить свою работу со всеми задачами.

Если все задачи решены и тесты с зеленым маркером то возрадуйтесь, можно бежать и нажать волшебную кнопку Submit.

Все тесты находятся в таргете RSSchool_T2Tests

![Image of UnitTests](https://github.com/rolling-scopes-school/rs.ios-stage1-task2/blob/master/images/UnitTests.png)

Если вы пришли к выводу, что выполнили максимум того что могли сделать, то сделайте Submit задачи через 
https://app.rs.school/



