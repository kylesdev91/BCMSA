var words = [String]()
var x = 1

func sort(word: String) {
    let UTF8Key = wordtoUTF8(word: word)

    while x < word.count {
        if UTF8Key[x] < UTF8Key[x-1] {
            
            x -= 1
        }
        x += 1
    }
    x = 1
}

func wordtoUTF8(word: String) -> [Int] {
    var intArray = [Int]()
    
    for UTF8num in word.utf8 {
        intArray.append(Int(UTF8num))
    }
    return intArray
}

func swaps(value1: Any, value2: Any) {
    var finalChange = [Any]()
    
    finalChange.append(value2)
    finalChange.append(value1)
    
    print(finalChange)
}

while let readWord = readLine() {
    if readWord == "" {
        break
    } else {
        words.append(readWord)
    }
}

print(wordtoUTF8(word: words[1]))
swaps(value1: 32, value2: 11)
