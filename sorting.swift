var words = [String]()
var newWords = [String]()
var x = 1

func sort(word: String) -> String {
    var UTF8Key = wordtoUTF8(word: word)
    var wordArray = [Character]()
    
    for char in word {
        wordArray.append(char)
    }

    var exit = false
    
    while x < word.count && exit == false {
        while UTF8Key[x] < UTF8Key[x-1] {
            let tempInt = UTF8Key[x]
            UTF8Key[x] = UTF8Key[x-1]
            UTF8Key[x-1] = tempInt

            let tempChar = wordArray[x]
            wordArray[x] = wordArray[x-1]
            wordArray[x-1] = tempChar

            if x == 1 && word.count <= 2 {
                exit = true
                break
            } else if x == 1 {
                x += 1
            } else {
                x -= 1
            }
        }
        x += 1
    }
    x = 1
    var finalString = ""
    for char in wordArray {
        finalString += String(char)
    }
    return finalString
}

func wordtoUTF8(word: String) -> [Int] {
    var intArray = [Int]()
    
    for UTF8num in word.utf8 {
        intArray.append(Int(UTF8num))
    }
    return intArray
}

while let readWord = readLine() {
    words.append(readWord)
}

for unsorted in words {
    newWords.append(sort(word: unsorted))
}

