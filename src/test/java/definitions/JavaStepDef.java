package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;

public class JavaStepDef {
    private float Fahrenheit;
    private float Centimeters;
    private int Liters;


    //1.print
    @Given("I Print Hello World")
    public void iPrintHelloWorld() {
        System.out.println("Hello World");
    }

    @Given("I print {string}")
    public void iPrint(String sString) {
        System.out.println(sString);

    }

    @Then("I print {string} and {string}")
    public void iPrintAnd(String sString1, String sString2) {
        System.out.println(sString1 + sString2);
        System.out.println(sString1 + " " + sString2 + "!");

    }
    //2.Calculations
    @Given("I calculate results with {int} and {int}")
    public void iCalculateResultsWithAnd(int iNum1, int iNum2) {
        System.out.println(iNum1 + " and " + iNum2);
        System.out.println(iNum1 + iNum2);
        System.out.println(iNum1 - iNum2);
        System.out.println(iNum1 * iNum2);
        System.out.println(iNum1 / iNum2);

    }
    //3.Even or odd number
    @Then("I identify the number {int} is odd or even")
    public void iIdentifyTheNumberIsOddOrEven(int iNum3) {
        if (iNum3 % 2 == 0) {
            System.out.println(iNum3 + " is even number");
        } else {
            System.out.println(iNum3 + " is odd number");
        }
    }

    //4.Print date and days of the week
    @Given("I want to print all days of the week")
    public void iWantToPrintAllDaysOfTheWeek() {
        String[] aDaysOfWeek = {"Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"};
        int[] aDateOfWeek = {12, 13, 14, 15, 16, 17, 18};
        System.out.println(aDaysOfWeek[3]);
        for (String element : aDaysOfWeek) {
            System.out.println(element);
        }
        for (int i = 0; i < aDateOfWeek.length; i++) {
            System.out.println(aDaysOfWeek[i] + " " + aDateOfWeek[i]);
        }


    }
    //5.Conversations
    @And("I am converting {float} celsius to fahrenhit")
    public void iAmConvertingCelsiusToFahrenhit(float celsius) {
        celsius = (float) 20.0;
        Fahrenheit = (celsius * 9 / 5) + 32;
        System.out.println(celsius + "Degree in C is eqaul to" + Fahrenheit + "F");
    }


    @Given("I am converting {float} foot to centimeters")
    public void iAmConvertingFootToCentimeters(float foot) {
        foot = 1.0F;
        Centimeters = (float) (foot * 30.48);
        System.out.println(foot + "Feet is equal to" + Centimeters + "C");

    }

    @And("I am converting {int} US gallon to liters")
    public void iAmConvertingUSGallonToLiters(int gallon) {
        gallon = (int) 1.0;
        Liters = (int) (gallon * 3.78541);
        System.out.println(gallon + "Gallon is equal to" + Liters + "L");

    }

    //6.Odd/even
    @Given("Check if number {int} is odd or even")
    public void checkIfNumberIsOddOrEven(int iNum5) {
        if (iNum5 % 2 == 0) {
            System.out.println(iNum5 + " is even number");
        } else {
            System.out.println(iNum5 + " is odd number");
        }
    }

    //7.Grades
    @Given("I got {int} percent on my test")
    public void iGotPercentOnMyTest(int myPercentage) {
        if (myPercentage >= 90 && myPercentage <= 100) {
            System.out.println("You passed with Grade A");

        } else if (myPercentage >= 80 && myPercentage <= 89) {
            System.out.println("You passed with Grade B");

        } else if (myPercentage >= 70 && myPercentage <= 79) {
            System.out.println("You passed with Grade C");

        } else if (myPercentage >= 60 && myPercentage <= 69) {
            System.out.println("You passed with Grade D");

        } else if (myPercentage >= 0 && myPercentage <= 59) {
            System.out.println("You passed with Grade F");


        }
    }

    //8.cost of the fruit
    @Given("I find cost of {float} pounds of {string}")
    public void iFindCostOfPoundsOf(float pounds, String fruit) {
        double pricePerPound = 0;

        if (fruit.equalsIgnoreCase("grapefruit")) {
            pricePerPound = 2.99;
        } else {
            pricePerPound = 1.99;

        }

        double totalCost = pounds * pricePerPound;
        System.out.println("Total cost of " + pounds+ " pounds of " + fruit + " is $" + totalCost);
    }

    //9.Days of the week
    @Given("Print days of the week")
    public void printDaysOfTheWeek() {
        String[] aDaysOfWeek = {"Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"};
        //print all values of array using for loop
        for(int i=0;i<aDaysOfWeek.length;i++){
            System.out.println("Days in the week: "+aDaysOfWeek[i]);
        }
        //using for each loop
        for(String Day:aDaysOfWeek){
            System.out.println("Days in the week: "+Day);
        }

    }
}







