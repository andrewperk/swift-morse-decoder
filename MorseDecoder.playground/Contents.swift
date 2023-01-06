// The english text
var englishText = "this is a secret message"

// The secret message
var secretMessage = ".... --- .-- -.. -.--   .--. .- .-. - -. . .-."

// Letters and their Morse Code equivalent
var letterToMorse: [String: String] = [
  "a": ".-",
  "b": "-...",
  "c": "-.-.",
  "d": "-..",
  "e": ".",
  "f": "..-.",
  "g": "--.",
  "h": "....",
  "i": "..",
  "j": ".---",
  "k": "-.-",
  "l": ".-..",
  "m": "--",
  "n": "-.",
  "o": "---",
  "p": ".--.",
  "q": "--.-",
  "r": ".-.",
  "s": "...",
  "t": "-",
  "u": "..-",
  "v": "...-",
  "w": ".--",
  "x": "-..-",
  "y": "-.--",
  "z": "--..",
  ".": ".-.-.-",
  "!": "-.-.--",
  "?": "..--..",
  ",": "--..--"
]

//Convert English Text to Morse Code

// Stores the English converted to Morse
var morseText = ""

// Loop through each letter of the English Text
for element in englishText {
  // Check if English letter exists in the morse letters(no space)
  // Convert the element Char to a string
  if let morseChar = letterToMorse["\(element)"]{
    // Concat the morseChar and a space to morseText
    morseText += morseChar + " "
  }
  // If a space is found, add three spaces to split the words
  else{
    morseText+="  "
  }
}

//Display English to Morse encoding
print ("English to morse: " + morseText + "\n")



// Now Decode Morse to English

// Store the decoded Morse in English
var decodedMessage: String = ""

// Store individual Morse code letters
var morseCodeArray = [String]()

// The current Morse code letter
var currMorse: String = ""

// Loop over the secret message
for char in secretMessage {
  // If char is not a space
  if char != " " {
    currMorse.append(char)
  } else {
    // Char is a space
    switch currMorse {
      // start of the letter
      case "":
        currMorse += " "
      // second space
      case " ":
        morseCodeArray.append(" ")
        currMorse = ""
      default:
        // Resets currMorse for the next letter
        morseCodeArray.append(currMorse)
        currMorse = ""
    }
  }
}

morseCodeArray.append(currMorse)

// Holds the morse letters and english letters
var morseToLetter: [String: String] = [:]

// Loop over letterToMorse dictionary
for (letter, morseChar) in letterToMorse {
  // store moreChar as key and letter as value
  morseToLetter[morseChar] = letter
}

// loop over the morse code array
for morseValue in morseCodeArray {
  // check if it exists
  if let letterChar = morseToLetter[morseValue] {
    decodedMessage += letterChar
  // otherwise its a space
  } else {
    decodedMessage += " "
  }
}

print("Morse to English: \(decodedMessage)")








