// Function to return Instructor's name
String InstructorName() {
  return "Allan";
}

String InstructorAge() {
  return "50";
}

void main() {
  // Calling the function and storing the result
  String instructor = InstructorName();
  String age = InstructorAge();

  // Printing the instructor's name
  print("The Instructor's name is: $instructor");
  print(instructor);
  print(age);
}
