let unsortedStrings = [String]()
var strings:[String]=unsortedStrings
while let line = readLine() {
    strings.append(line)
}
var swapCount : Int=0, passSwap : Int=0, swapTotal : Int=0, passes : Int=0
print("Pass: 0, Swaps: 0/0, Array: \(strings)")

for i in 1..<strings.count {
    var key = i
    let j = strings[key]
    passSwap=0
    while key > 0 && j < strings[key - 1] {
        strings[key] = strings[key - 1]
        swapCount += 1
        passSwap += 1
        key -= 1
    }
    strings[key] = j
    passes += 1
    print("Pass: \(passes), Swaps: \(passSwap)/\(swapCount), Array: \(strings)")
}

// Add your code below:
