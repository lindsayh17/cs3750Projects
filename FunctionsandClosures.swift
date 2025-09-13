/*Clousres and Functions*/

// Categorizing Integers I

func isMultiple(of testValues: Set<Int>, in numbers: Set<Int>) -> (yes: Set<Int>, no: Set<Int>){
    var yes = Set<Int>()
    var no = Set<Int>()
    var multiple = true
    
    // deal with 0 special case
    if testValues.contains(0){
        for number in numbers{
            if number != 0{
                no.insert(number)
            }
            else{
                yes.insert(number)
            }
        }
    }else{
        for num in numbers{
            multiple = true
            for test in testValues{
                if num % test != 0{
                    multiple = false
                }
            }
            if multiple{
                yes.insert(num)
            }else{
                no.insert(num)
            }
        }
    }
    return(yes, no)
}

print(isMultiple(of: Set([3, 7]), in: Set([-12, -7, -42, 0, 2, 3, 7, 105, 19])))


// Categorizing Integers II

func categorize(_ numbers: Set<Int>, using check: (Int) -> Bool) -> (yes: Set<Int>, no: Set<Int>){
    var yes = Set<Int>()
    var no = Set<Int>()
    
    for n in numbers{
        if check(n){
            yes.insert(n)
        }else{
            no.insert(n)
        }
    }
    
    return(yes, no)
}

print(categorize(Set([-5, 0, 1, 5, 6]), using: {i in i > 0})) //TODO: check (printing weird)
