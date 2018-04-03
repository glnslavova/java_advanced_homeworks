package person;

public class Person {

    private int age;
    private String name;

    private boolean isMan;

    public Person() {
    }

    public Person(String name, int age, boolean isMan) {
        this.name = name;
        this.age = age;
        this.isMan = isMan;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public boolean isMan() {
        return isMan;
    }

    public void setMan(boolean man) {
        isMan = man;
    }


    public void showPersonInfo() {
        System.out.println(getName()+"" +getAge() +""+ isMan());
    }
}
