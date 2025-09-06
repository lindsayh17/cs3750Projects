// exercise 1

var start = 1
var end = 50
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
