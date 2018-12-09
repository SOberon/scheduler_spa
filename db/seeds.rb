Course.create!([
  {name: "Trinary in 0, 1, 2!", department: "Computer_Science", number: 1022, credit_hours: 4},
  {name: "One Fish Two Fish", department: "Math", number: 1010, credit_hours: 4},
  {name: "A Brief History of Everything", department: "History", number: 4014, credit_hours: 4},
  {name: "y u no spel gud", department: "English", number: 1046, credit_hours: 3},
  {name: "Do Alligators and Crocodiles Hang Out?", department: "Biology", number: 4200, credit_hours: 1},
  {name: "Web Development with Assembly", department: "Computer_Science", number: 3030, credit_hours: 4},
  {name: "Testing Rails Apps Throughout the Ages", department: "History", number: 1021, credit_hours: 3}
])
Section.create!([
  {semester: "Spring", number: 3, course_id: 4, room_number: 421},
  {semester: "Fall", number: 2, course_id: 8, room_number: 104},
  {semester: "Fall", number: 12, course_id: 7, room_number: 14},
  {semester: "Summer", number: 6, course_id: 10, room_number: 622},
  {semester: "Spring", number: 4, course_id: 4, room_number: 130},
  {semester: "Spring", number: 1, course_id: 5, room_number: 122},
  {semester: "Spring", number: 12, course_id: 5, room_number: 1212}
])
Student.create!([
  {name: "Sam Larson", student_id: nil},
  {name: "Joe Gage", student_id: nil},
  {name: "Jimmy Cricket", student_id: nil},
  {name: "Jon Doe", student_id: nil},
  {name: "Hans Gruber", student_id: nil},
  {name: "Aaaaaaaaah", student_id: nil},
  {name: "Test Testerson", student_id: nil}
])
