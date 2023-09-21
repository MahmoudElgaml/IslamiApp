class Employee {
  int salary;
  String adress;
  late EmployeeInfo eInfo;
  late Department dEmployee;

  Employee(this.salary, this.adress, String fName, String lName, String mName,
      String phone, this.dEmployee, a n2) {
    n2.n1 = "mdfl;sd";
    eInfo = EmployeeInfo(fName, mName, lName, phone);
  }
}

class EmployeeInfo {
  String fName = "";
  String mName = "";
  String lName = "";
  String phone = "";

  EmployeeInfo(this.fName, this.mName, this.lName, this.phone);
}

class Department {
  String dName = "";
  int dNumber;

  Department(this.dName, this.dNumber);
}

class a {
  String n1 = "";
}

void main() {
  Department d1 = Department("It", 1);
  //Employee e1 = Employee(22, "sfad", "", "", "", "", d1);
 // Employee e2 = Employee(22, "sfad", "", "", "", "", d1);
 // Employee e3 = Employee(22, "sfad", "", "", "", "", d1);
}
