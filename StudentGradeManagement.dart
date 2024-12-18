class Student {
  String _name;
  String _rollNumber;
  String _grade = "Not Assigned";

  Student(this._name, this._rollNumber);

  // Getter for name
  String get name {
    return _name;
  }

  // Getter for rollNumber
  String get rollNumber {
    return _rollNumber;
  }

  // Getter for grade
  String get grade {
    return _grade;
  }

  // Setter for grade with validation
  set grade(String grade) {
    switch (grade) {
      case 'A':
      case 'B':
      case 'C':
      case 'D':
      case 'F':
        _grade = grade;
        break;
      default:
        print("Invalid grade. Please enter a valid grade (A, B, C, D, F).");
    }
  }

  // Method to print student details
  void printStudentInfo() {
    print("Student Name: $_name");
    print("Roll Number: $_rollNumber");
    print("Grade: $_grade");
  }
}

// Main Function
void main() {
  Student student1 = Student("Mooaz", "CS401");
  Student student2 = Student("Ahmed", "IT403");


  student1.printStudentInfo();
  print("");
  student2.printStudentInfo();
  print("");

  student1.grade = "A";
  student1.grade = "B";
  print("\nAfter updating grades:");
  student1.printStudentInfo();

  print("\nSetting an invalid grade:");
  student1.grade = "E"; // Invalid grade example
  student2.grade = "M"; // Invalid grade example
}
