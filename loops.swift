*
 Lindsay Hall
 cs3750
 Swift assignment 1
 */

// exercise 1
let start = 1
let end = 50
var nums = "" // prints the numbers

print("THREE/FIVE from \(start) to \(end)")

for i in start...end{
    if (i % 3 == 0) && (i % 5 == 0){
        nums += "THREE and FIVE"
    }
    else if i % 3 == 0{
        nums += "THREE"
    }
    else if i % 5 == 0{
        nums += "FIVE"
    }
    else{
        nums += "\(i)"
    }
    
    //print or leave out comma
    if i != end{
        nums += ", "
    }
}

print("\(nums)")
print("Done.")


// exercise 2
let height = 9

//initialize number of outer spaces
var outerSpaces = -1

for row in 0..<height{
    // initialize line to be printed in this iteration
    var line = ""
    
    // first and last lines
    if row == 0 || row == height-1{
        for col in 0..<height{
            if col == 0 || col == height-1{
                line += "+"
            }else{
                line += "-"
            }
        }
    }else{ // create rows with x's
        line += "|"
        
        // upper xs
        if row < height/2{
            outerSpaces += 1
            
            for _ in 0..<outerSpaces{
                line += " "
            }
            line += "+"
            // draw inner spaces
            for _ in 0..<(height - 4 - (2*outerSpaces)){
                line += " "
            }
            line += "+"
            for _ in 0..<outerSpaces{
                line += " "
            }
            
        }
        // center x for odd heights
        else if height % 2 != 0 && row == height/2{
            outerSpaces += 1
            for _ in 0..<outerSpaces{
                line += " "
            }
            line += "+"
            for _ in 0..<outerSpaces{
                line += " "
            }
            outerSpaces -= 1
        }
        // lower xs
        else if row > (height/2 - 1){
            for _ in 0..<outerSpaces{
                line += " "
            }
            line += "+"
            for _ in 0..<(height - 4 - (2*outerSpaces)){
                line += " "
            }
            line += "+"
            for _ in 0..<outerSpaces{
                line += " "
            }
            
            outerSpaces -= 1
        }
        
        // close row
        line += "|"

    }
    
    print("\(line)")

}


// exercise 3
let limit = 100
var prime: Bool

var primes = ""

for i in 2...limit{
    // check for even numbers
    if i % 2 == 0 && i != 2{
        prime = false
    }else{
        prime = true
    }
    
    // ensure number not divisble by anything other than itself
    for j in 2..<i where prime{
        if i % j == 0{
            prime = false
        }
    }
    
    if prime{
        print("\(i) ", terminator: "")
    }
    
}
