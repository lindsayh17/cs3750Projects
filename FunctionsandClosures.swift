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
