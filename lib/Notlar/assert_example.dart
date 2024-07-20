

// void main() async{
//
//   /// Burda normal assert cagrildi. Bos string verdim hata firlatti
//   AssertExample assertExample=AssertExample("hhh", 1);
//   print(assertExample) ;
//   /// Burda da constructor icerisindeki class degiskenini kontrol ettim.
//   /// Sarti saglamiyorsa throw yapacak hata yazdim
//   AssertExample throwExample=AssertExample.withThrowConstructor("", 1);
//   print(assertExample) ;
//
//
// }



// Aslinda ikisinde de mantik ayni. Sadece birinde assert kullanildi birinde ise throw kullanildi.

class AssertExample {
  final String name;
  final int age;

  AssertExample(this.name, this.age)
      : assert(name.isNotEmpty,"Name can not be empty or null");


  AssertExample.withThrowConstructor(this.name, this.age)
  {
    if(name.isEmpty)
      throw ArgumentError("Isim bos olamaz");
  }
}
