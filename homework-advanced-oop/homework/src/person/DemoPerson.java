package person;

import java.util.*;

public class DemoPerson {

    public static void main(String[] args) {

        Person arrayPerson[] = new Person[10];

        Person pesho = new Person("Peter", 17, true);

        Person gosho = new Person("Georgi", 27, true);

        Student ivan = new Student("Ivan", 25, true, 4.5);

        Student sofia = new Student("Sofia", 27, false, 6.0);

        Employee maya = new Employee("Maya", 46, false, 100.5);

        Employee simeon = new Employee("Simeon", 36, true, 67.89);


        arrayPerson[0] = pesho;
        arrayPerson[1] = gosho;
        arrayPerson[2] = ivan;
        arrayPerson[3] = sofia;
        arrayPerson[4] = maya;
        arrayPerson[5] = simeon;


        for (int i = 0; i < arrayPerson.length; i++) {


            if (arrayPerson[i] instanceof Person) {

                arrayPerson[i].showPersonInfo();

            } else if (arrayPerson[i] instanceof Student) {

                arrayPerson[i].showStudentInfo();

            } else if (arrayPerson[i] instanceof Employee) {

                arrayPerson[i].showEmployeeInfo();
            }
        }


        for (int i = 0; i < arrayPerson.length; i++) {

            if (arrayPerson[i] instanceof Employee) {
                arrayPerson[i].calculateOvertime(2.0);

            }


        }
    }
}


