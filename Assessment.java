
/*
Author: Nyaberi Brian
Zeraki Assessments Task
Java tasks

1) Given an array K with N integers from 1 to N+1 such that the array has exactly one integer missing, write
a Java function that returns the missing integer.
e.g. given K = [3,5,4,1], the function should return 2
*/

//Solution

class Assessment
{
    /* 
    myArray : the array to be operated on
    n : Number of elements in array a
     */
    static int findMissingNum(int myArray[], int n) 
    {
        int total = 1;
        for (int x = 2; x <= (n + 1); x++)
        {
            total += x;
            total -= myArray[x - 2];
        }
        return total;
    }
    //calling the function
    public static void main(String[] args)
    {
        int[] arr = { 3, 5, 4, 1 };
        System.out.println(findMissingNum(arr, arr.length));
    }
}
 

/*
2) Given a string S of length N, write a Java function that transforms the string by reversing characters in
groups of four, and returns the transformed string.
e.g. when S = 'Lorem at' the output should be 'eroLta m'
when S = ' Tempor ip' the output should be 'meT roppi'
*/

//Solution

import java.util.*;

public class StringReverseGroup
{
    public static void main(String args[]) 
    {
        //declare the variables initial and reversed
        String initial, reversed="";

        //taking input and store
        Scanner in = new Scanner(System.in);
        System.out.println("Enter the string to be reversed :");
        initial = in.nextLine();

        //reversing every character of the string
        int length = initial.length();
        for(int x = length-x; x>=0; x--)
        reversed = reversed + initial.charAt(x);

        System.out.println("The reversed string is: " + reversed);
    }
}

