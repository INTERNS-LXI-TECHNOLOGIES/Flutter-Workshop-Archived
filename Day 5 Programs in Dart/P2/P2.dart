/* program to read 5 Studentsdeatils and perform following functions
1. Search
2. Total marks
3. Percentage
4. Display All*/

import 'dart:io';
class Students
{
	var arr=new List();
	void studentsDetails()
	{
		for(i=0; i<5; i++)
		{
		print('Enter the Student's Name');
		String name=stdin.readLineSync();
		arr.add(name);

		print('Enter the Student's Class');
		int cls=int.parse(stdin.readLineSync());
		arr.add(cls);
		
		print('Enter the Student's Total Mark');
		int total=int.parse(stdin.readLineSync());
		arr.add(total);
		
		print('Enter the Student's Mark Percentage');
		int percent=int.parse(stdin.readLineSync());
		arr.add(percent);


		}
		print(arr);

	}
	void searchArray()
	{
		print('Enter the Name of Student you want to search');
		String name= stdin.readLineSync(); 
		 if(arr.contains(name))
	{
        print('$name is available');
    }
     else {
        print('$name is not Available');

}