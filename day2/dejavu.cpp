#include <iostream>
using namespace std;

// THIS CODE FAILS DUE TO TIME CONSTRAINTS

bool palindrome(string str) {
    int limitl = 0;
    int limitr = str.length() - 1;
    while (limitl < limitr) {
        if (str[limitl] != str[limitr]) { return false; }
        limitl++;
        limitr--;
    }
    return true;
}

// loops through string to find a position where 'a' can be inserted and not be a palindrome
//returns correct string if found else returns "404"
string insert_no_palindrome(string str) {
    for (int i = 0; i < str.length(); i++) {
        str.insert(i, 1, 'a');
        if (!palindrome(str)) { return str; }
        str.erase(i, 1);
    }
    return "404";
}

// prints output for test cases
void print_answer(string str) {
    string answer = insert_no_palindrome(str);

    if (answer == "404") { cout << "NO\n"; return; }

    cout << "YES\n";
    cout << answer << "\n";
}

int main() {
    // code for tests:
    int number_of_cases;
    cin >> number_of_cases;

    string input;
    for (int i = 0; i < number_of_cases; i++) {
        cin >> input;
        print_answer(input);
    }
    return(0);
}
