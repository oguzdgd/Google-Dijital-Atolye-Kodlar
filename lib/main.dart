
/*void main() {
 String s = 'Hello';
  String s1 = s.replaceFirst('e', 'a');
  print(s);
  print(s1);
}*/


//3.5 Class
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


}