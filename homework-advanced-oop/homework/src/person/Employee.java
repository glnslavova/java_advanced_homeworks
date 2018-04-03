package person;

public class Employee extends Person {

    private double daySalary;

    public Employee(String name, int age, boolean isMan, double daySalary) {

        name = "Diana";
        age = 43;
        isMan = false;
        daySalary = 51.43;

    }

    public double getDaySalary() {
        return daySalary;
    }

    public void setDaySalary(double daySalary) {
        this.daySalary = daySalary;
    }

    public double payOvertime(double overtime) {
        if (getAge() < 18) {
            overtime = 0;
        } else if (getAge() > 18) {
            overtime = (daySalary / 8) * 1.5;
        }
        return overtime;
    }

    public double calculateOvertime(double hoursOvertime) {
        return hoursOvertime * ((daySalary / 8) * 1.5);


    }

    public void showEmployeeInfo() {

        System.out.println(getName() +""+ getDaySalary());

    }
}
