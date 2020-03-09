pragma solidity ^0.4.25;
contract Simple {
struct Student {
        string company;
        string country;
        string data;
    }
mapping (string => Student) students;
function Simple()
        public
    {
        createStudent("EITCO","186789468293341123127863","Germany", "Berlin");

    }
    function createStudent(string key, string company, string country, string data)
        public
        payable
    {
        students[key] = Student(company,country,data);
    }
   
    function queryStudent(string key) public view returns (string, string, string)
    {
        return (students[key].company, students[key].country, students[key].data);
    }
}