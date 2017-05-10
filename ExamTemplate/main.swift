import Foundation

/*

ORGANIZING YOUR SOLUTION

A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.

The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?

*/

/*

INPUT

Be sure that your implementation of this section discards all the possible bad inputs the user could provide.

Make use of your test plan and algorithm to ensure your code is complete.

*/
var angleOne = Int()
var angleTwo = Int()
var angleThree = Int()
var triangleType = String()

// Loop until valid input is received
while angleOne == 0 {
	
	// Show the prompt
	print("Angle 1? ", terminator: "")
	
	// Get the user's input
	var input : String?
	input = readLine()
	
	// Use optional binding to see if the string can be unwrapped (to see if it is not nil)
	if let notNilInput = input {
		
		// You probably need to add additional checks to be sure the
		// input received is valid
		// Add checks as needed...
		
		// Save the input given, as we are certain it's what we are looking for now
		if let inputNumber = Int(notNilInput){
			if inputNumber > 0 && inputNumber < 179 {
				angleOne = inputNumber
			}
		}
	}
}

while angleTwo == 0 {
	
	// Show the prompt
	print("Angle 2? ", terminator: "")
	
	// Get the user's input
	var input : String?
	input = readLine()
	
	// Use optional binding to see if the string can be unwrapped (to see if it is not nil)
	if let notNilInput = input {
		
		// You probably need to add additional checks to be sure the
		// input received is valid
		// Add checks as needed...
		
		// Save the input given, as we are certain it's what we are looking for now
		if let inputNumber = Int(notNilInput){
			if inputNumber > 0 && inputNumber < 179 {
				angleTwo = inputNumber
			}
		}
	}
}

while angleThree == 0 {
	
	// Show the prompt
	print("Angle 3? ", terminator: "")
	
	// Get the user's input
	var input : String?
	input = readLine()
	
	// Use optional binding to see if the string can be unwrapped (to see if it is not nil)
	if let notNilInput = input {
		
		// You probably need to add additional checks to be sure the
		// input received is valid
		// Add checks as needed...
		
		// Save the input given, as we are certain it's what we are looking for now
		if let inputNumber = Int(notNilInput){
			if inputNumber > 0 && inputNumber < 179 {
				angleThree = inputNumber
			}
		}
	}
}

/*

PROCESS

Here is where you implement the logic that solves the problem at hand.

Make use of your test plan and algorithm to ensure your code is complete.

*/

// Add 'process' code below....
if (angleOne + angleTwo + angleThree == 180){
	if (angleOne == angleTwo && angleTwo == angleThree){
		triangleType = "EQUILATERAL"
	} else if (angleOne == angleTwo || angleOne == angleThree || angleTwo == angleThree){
		triangleType = "ISOSCELES"
	} else {
		triangleType = "SCALENE"
	}
} else {
	triangleType = "ERROR"
}
/*

OUTPUT

Here is where you report the results of the 'process' section above.

Make use of your test plan and algorithm to ensure your code is complete.

*/

// Add 'output' code below... replace what is here as needed.
print(triangleType)
