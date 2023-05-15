# Flutter_Projects

#Dart Chatbot

This Dart code represents a simple chatbot program that reads text from a file, tokenizes it, and allows the user to ask questions based on the content of the text. The chatbot responds by searching for keywords in the text and providing relevant answers.

The main function reads the content of the file "main.txt" and tokenizes it into sentences. It then calls the textwriter function.

The textwriter function initializes the chatbot and displays a welcome message. It enters a loop where it prompts the user for input and checks for specific commands. If the user enters "bye," the program exits. Otherwise, it passes the user's input to the TextGenerator class.

The TextFinder class checks whether a given piece of text contains specific keywords by tokenizing both the input text and the content from the file. It skips common words and checks for matches between the user's input and the file content.

The TextGenerator class extends TextFinder and generates responses based on the user's input. It iterates through the tokenized content and checks if any of the sentences contain matching keywords. If a match is found, it prints the corresponding sentence. If no match is found, it prints a default message.

Overall, this program provides a basic chatbot functionality by allowing the user to ask questions based on the content of a file and receiving responses based on keyword matching.
