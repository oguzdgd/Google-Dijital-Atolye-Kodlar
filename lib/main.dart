/*void main() {
 String s = 'Hello';
  String s1 = s.replaceFirst('e', 'a');
  print(s);
  print(s1);
}*/
// --- Chapter 3 ---
//3.5 Class
/*
void main() {

  final ali= Student("Ali", "Yilmaz", 21, "male", 100);
  final selim= Student("Selim", "Yilmaz", 20, "male", 70);

  print(ali.name);
  print(ali); // If we want to print the properties in our class directly, we need to override them.Before override =  output : Instance of 'Student'

  if(ali.isItAboveAverage(90)){
    print("Excellent Ali");
  }

  print(ali.nameSurname);
  ali.nameSurname="Oguzhan Dogdu";

  //getter-setter output
  print(ali.nameSurname);

  //static field output
  print(Student.schoolName); // pay attention ! we used class name.

  //static method output
  Student.setSchoolName("Cukurova University");
  print(Student.schoolName);

}
class Student{

  //static field : this is like a global variable
  static String schoolName="Mersin University";

  //static method
  static void setSchoolName(String newSchoolName){
    schoolName=newSchoolName;
  }

  //Field
  String name;
  String surname;
  int age;
  String gender;
  int mark;
  bool gratuated;

  //Constructor -- alt + insert button
  Student(this.name, this.surname, this.age, this.gender, this.mark) : gratuated=false;

  //Method
  bool isItAboveAverage(int average){
    return mark>average;
  }

  //getter
  String get nameSurname => '$name $surname';

  //setter
  set nameSurname(String value){
    int space=value.indexOf(" ");
    name = value.substring(0,space);
    surname = value.substring(space + 1);
  }

  //override
  @override
  String toString() {
    return "$name,$surname,$age,$gender,$mark,$gratuated";
  }


}*/

//3.6 Null Safety
/*
void main() {
  //Non-Nullable
  String s;
  s = "Oguz";
  print(s);
  print(s.length);

  //Nullable
  String? sn;
  sn = getName();// This function is non nullable because String?. Thats why we should use ! for: print(sn!.length);
  print(sn);
  print(sn!.length); //Exclamation means : We need to show that it is not nullable.


  //we should avoid exclamation (!)
  //Dealing with nullable with Type Promotion
  String? tr;
  tr = getJob();
  print(tr);
  if(tr !=null){ //İf sn is not null, write tr.length
    print(tr.length);
  }
}
String? getName() => "Selim";
String? getJob() => "Hilmi";*/

//3.7 Cathcing Error
/*
void main() {
  //this is just using double parse

double s = double.parse("11.3");
  print(s);
  double a =5;
  double b=s+a;
  print(b);


  //1
  try {
    double.parse("First ");
  } catch (e) {
    print("Error Occures : " + e.toString()); // e.toString write the error and output. Output : Error Occured : FormatException: Invalid double.
  }

  //2
  try {
    double.parse("Second ");
  } on FormatException catch (e) {
    print("Format Exception Error!");
  } catch (e) {
    print("another error has occurred."); //
  }

  //finally
  try {
    double.parse("Third");
  } catch (e) {
    print("Error occured");
  } finally {
    print("Finally"); // Finally works whether there is an error or not.
  }
  //Throw : the developer herself can generate the error message.
  int a=5;
  if(a!=6){
    throw Exception ('This is an error. Tt shouldnt have been like this');
  }
*/
//3.8 Flutter Lints
//3.9 Using Libraries

// --- Chapter 4 --

class Student{

  String name;
  int _age;

  Student(this.name, this._age);

  void  sayHello(){
    print("Hello I am $name, $_age years old");

  }
  void celebratebirthday() {
    _age+=1;
}

}


void  main() {
  Student s1 = Student("Oguz", 23);
  Student s2 = Student("Sade", 22);


  s1.sayHello();
  s2.sayHello();

  s1.celebratebirthday();

  s1.sayHello();
  s2.sayHello();
  print("Deneme github");


}
