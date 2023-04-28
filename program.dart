import 'dart:io';

void main() {
  File file = new File("ques.txt");
  var textTokenized = file.readAsStringSync().split('.');
  textwriter(textTokenized);
}

void textwriter(var textTokenized) {
  print("");
  print("\t\t\tWelcome to Dart Chatbot");
  print(
      "_______________________________________________________________________________");
  //print("Please Enter keyword Which topic do you want to learn? or write 'bye' for exit.");
  print("Ask me ");
  while (true) {
    stdout.write("YOU-> ");
    //print("You: ");
    String userInput = stdin.readLineSync() as String;
    userInput = userInput.toLowerCase();
    stdout.write("BOT-> ");
    if (userInput == "bye") {
      print("Ok Bye, Thank You!");
      break;
    } else if (userInput != "") {
      TextGenerator generator = new TextGenerator();
      generator.generateText(textTokenized, userInput);
    } else {
      print("Please Write a Proper Question!");
    }
  }
}

class TextFinder {
  bool findingText(var spacetokenized, String text) {
    bool check = false;
    List<String> commonWords = [
      "and",
      "are",
      "is",
      "to",
      "for",
      "also",
      "of",
      "it's",
      "like",
      "a"
    ];
    List tokenizedText = text.split(' ');
    spacetokenized.forEach((element) {
      tokenizedText.forEach((element1) {
        bool commonwordschecker = false;

        commonWords.forEach((element) {
          if (element == element1.toLowerCase()) {
            commonwordschecker = true;
          }
        });
        if (commonwordschecker == true) {
        } else if (element.toLowerCase() == element1.toLowerCase()) {
          check = true;
        }
      });
    });
    return check;
  }
}

class TextGenerator extends TextFinder {
  void generateText(var textTokenized, String userInput) {
    // print(textTokenized);
    int check = 0;
    for (int count = 0; count < textTokenized.length; count++) {
      var spacetokenized = textTokenized[count].split(' : ');
      var colonTokenized = spacetokenized[0].split(' ');
      // print(colonTokenized);
      if (spacetokenized.length > 1 && findingText(colonTokenized, userInput)) {
        //stdout.write("BOT-> ");
        print("${textTokenized[count]}");
        ++check;
        break;
      }
    }
    if (check == 0) {
      //stdout.write("BOT-> ");
      print("Sorry! I didn't Understood You");
    }
  }
}
