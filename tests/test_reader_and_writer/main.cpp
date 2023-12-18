#include <iostream>

using namespace std;

#include "io/reader_writer.h"

int main()
{
    //see io/reader_writer.cpp
    cout << "Test reader and writer: " << endl;

    sse::Vocabularys_t v;
    sse::read("vocabulary_r", v);
    sse::write(v, "vocabulary_w");

    return 0;
}

