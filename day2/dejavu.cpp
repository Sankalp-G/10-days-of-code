#include <iostream>
using namespace std;

// Ruby code recreated in cpp for speed

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

//returns correct string if found else returns "404"
string insert_no_palindrome(string str) {
    // appending 'a' before or after a string is enough to break a palindrome
    if (!palindrome(str + 'a')) { return str + 'a'; }
    if (!palindrome('a' + str)) { return 'a' + str; }
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
