var words = [String]()
var x = 1

func wordtoUTF8(word: String) {
    var dict = [Character:Int]()
    var index = 0
    for num in word.utf8 {
        dict[word[index]] = Int(num)
        index += 1
    }
    return dict
}

/*
func swap(integers:inout[Int]) {
    let tempvar = integers[firstIndex]

    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = tempvar
}
 */
while let readWord = readLine() {
    if readWord == "" {
        break
    } else {
        words.append(readWord)
    }
}
/*
for word in words {
    while x < word.count {
        
        x += 1
    }
}


 */
print(wordtoUTF8(word: words[1]))
