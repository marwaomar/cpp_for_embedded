#include <iostream>
#include <string>
#include <sstream>
#include<bits/stdc++.h>

using namespace std;

/*countWords function to count the number of inputs in first line*/
int countWords(string str)
{
    stringstream s(str);
    string word;

    int count = 0;

    while (s >> word)
    {
        count++;
    }

    return count;
}
/*No_Test_Cases function to check first input to know the number of test cases*/
void No_Test_Cases(string str, int count, int *output)
{
    stringstream s(str);
    string word;
    while (count)
    {
        s >> output[count - 1];
        s.clear();
        count--;
    }
}
/*check_files_Types function to check file extensions type*/
char check_files_Types(string input)
{
    /////////////////////// music ///////////////////////
    if (input.substr(input.find_last_of(".") + 1) == "mp3" || input.substr(input.find_last_of(".") + 1) == "aac" || input.substr(input.find_last_of(".") + 1) == "flac")
    {

        return 1;
    }
    /////////////////////// images ///////////////////////
    else if (input.substr(input.find_last_of(".") + 1) == "jpg" || input.substr(input.find_last_of(".") + 1) == "bmp" || input.substr(input.find_last_of(".") + 1) == "gif")
    {
        return 2;
    }
    ///////////////////////// Movie ///////////////////////
    else if (input.substr(input.find_last_of(".") + 1) == "mp4" || input.substr(input.find_last_of(".") + 1) == "avi" || input.substr(input.find_last_of(".") + 1) == "mkv")
    {
        return 3;
    }
    /////////////////////// others ///////////////////////
    else
    {
        return 0;
    }
}
/*get_test_cases function to check check each test case file extension then calculate the size in each category*/
void get_test_cases(int *No_cases, int size, int *counters, string *out)
{

    for (int i = size - 2; i >= 0; i--)
    {
        int count;
        int testCase = No_cases[i];
        for (int j = 0; j < testCase; j++)
        {
            string size;
            string input;
            getline(cin, input);
            stringstream s(input);
            while (s >> input)
            {
                /*Convert file names to lower case to check on extensions with solving case sensitivity problem*/
                transform(input.begin(), input.end(), input.begin(), ::tolower);
                ///////////////////////// Music ///////////////////////
                if (check_files_Types(input) == 1)
                {
                    s >> size;
                    stringstream str2int(size.substr(0, size.find('b')));
                    str2int >> count;
                    counters[0] += count;
                }
                ///////////////////////// Images ///////////////////////
                else if (check_files_Types(input) == 2)
                {
                    s >> size;
                    stringstream str2int(size.substr(0, size.find('b')));
                    str2int >> count;
                    counters[1] += count;
                }
                ///////////////////////// Movie ///////////////////////
                else if (check_files_Types(input) == 3)
                {
                    s >> size;
                    stringstream str2int(size.substr(0, size.find('b')));
                    str2int >> count;
                    counters[2] += count;
                }

                //////////////////////// Others ////////////////////////
                else
                {

                    s >> size;
                    /*This part of code solves the problem of having spaces in file name*/
                    if (size.find_first_of(".") == 0)
                    {
                        if (check_files_Types(size) == 1)
                        {
                            s >> size;
                            stringstream str2int(size.substr(0, size.find('b')));
                            str2int >> count;
                            counters[0] += count;
                        }
                        else if (check_files_Types(size) == 2)
                        {
                            s >> size;
                            stringstream str2int(size.substr(0, size.find('b')));
                            str2int >> count;
                            counters[1] += count;
                        }
                        else if (check_files_Types(size) == 3)
                        {
                            s >> size;
                            stringstream str2int(size.substr(0, size.find('b')));
                            str2int >> count;
                            counters[2] += count;
                        }
                    }
                    else
                    {
                        stringstream str2int(size.substr(0, size.find('b')));
                        str2int >> count;
                        counters[3] += count;
                    }
                }
            }
        }
        /*Save output of each category*/
        out[i] = "music " + to_string(counters[0]) + " images " + to_string(counters[1]) + " movies " + to_string(counters[2]) + " other " + to_string(counters[3]);
        /*Reset Counters*/
        counters[0] = counters[1] = counters[2] = counters[3] = 0;
    }
}

int main(void)
{
    string input; //Our string input
    getline(cin, input); // get it in getline to catch the whole line with spaces
    int counters[4] = {0}; // we have 4 counters for 4 categories
    int wordCount = countWords(input); // count inputs
    int No_testCases[wordCount]; // set array of size test cases
    No_Test_Cases(input, wordCount, No_testCases); // assign array with input
    string output[No_testCases[wordCount - 1]]; //output array
    get_test_cases(No_testCases, wordCount, counters, output); // get each test case and calculate the size of files and put them in categories
    for (int i = No_testCases[wordCount - 1] - 1; i >= 0; i--) // loop for print output
    {
        cout << output[i] << endl;
    }
    return 0;
}