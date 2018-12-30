public class Employee{
    
    public String empId = FORMAT('EMP-{0000}');
    public String employee;
    public String empFirstName;
    public String empLastName;

    public List<empType> employee = new List<empType>(new Employee(empId, empFirstName, empLastName));

    //Employee employees = new Employee(empFirstName, empLastName);
}