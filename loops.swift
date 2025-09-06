let start = 1
let end = 50
var nums = ""

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
let height = 8

var innerSpaces = height - 4
var outerSpaces = 0
var line = "\n"

for j in 0..<height{
    // initialize line to be printed in this iteration
    //var line = ""
    
    // first and last lines
    if j == 0 || j == height-1{
        for i in 0..<height{
            if i == 0 || i == height-1{
                line += "+"
            }else{
                line += "-"
            }
        }
    }else{
        line += "|"
        
        for k in 0..<outerSpaces{
            line += " "
        }
        line += "+"
        
        var inner = height - 4 - 2*outerSpaces
        
        if inner >= 0{
            for k in 0..<inner{
                line += " "
            }
        }
        line += "+"
        
        for k in 0..<outerSpaces{
            line += " "
        }
        
        line += "|"
        
        outerSpaces += 1
    }
    
    //print("\(line)")
    line += "\n"
}
print(line)


// exercise 3
let limit = 100
var prime: Bool

var primes = ""

for i in 2...limit{
    if i % 2 == 0 && i != 2{
        prime = false
    }else{
        prime = true
    }
    
    for j in 2..<i where prime{
        if i % j == 0{
            prime = false
        }
    }
    
    if prime{
        print("\(i) ", terminator: "")
    }
    
}
