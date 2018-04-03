package person;

public class Student extends Person {

    private double score;

    public Student(String name, int age, boolean isMan, double score) {

        name ="Asen";
        age=43;
        isMan=true;
        score=4.7;
    }


    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }


    public void showStudentInfo() {
        System.out.println(getName() +""+getScore());
    }
}
