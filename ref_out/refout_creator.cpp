#include <iostream>
#include <vector>
#include <fstream>
#include <algorithm>

using namespace std;

int main(int argc, char *argv[])
{

        //Read numbers from file
        int number;
        vector<int> numbers;
        ifstream inputFileStream;
        inputFileStream.open(argv[2]);
        int i = 0;
        while(inputFileStream.good() && i < atoi(argv[1]))
        {
            number = inputFileStream.get();
            numbers.push_back(number);
            i++;
        }

        //Print number from file to one cmd line
        for(int i = 0; i < numbers.size(); i++)
        {
            cout << numbers[i];
            if(i != numbers.size() - 1) //we do not want to space after last number
            {
                cout << " ";
            }
        }
        cout << endl;

        sort(numbers.begin(), numbers.end());

        //Print ordered numbers on own lines
        for(int i = 0; i < numbers.size(); i++)
        {
            cout << numbers[i] << endl;
        }

        return 0;
}