// imageConcurrency.cpp
#include <iostream>
#include <thread>
#include <mutex>
#include <chrono>
#include <condition_variable>
#include <vector>

using namespace std;

void f1()
{
  cout << "Hello ";
}

// A Functor.
struct F1
{
  void operator()() 
  {
    cout << "Parallel World!\n";
    
  }
};

// Print elements in vector v.
void f2(vector<double>& v)
{
  cout << "I am thread 1: " << endl;
  for (auto val : v)
  {
    cout << "T1: " << val << endl;
  }
}
// A Functor.
// Class to manipulate vector v.
struct F2
{
  vector<double>& v;
  F2(vector<double>& vv) :v{vv} 
  {
  };
                         
  void operator()() 
  {
    cout << "I am thread 2: " << endl;
    for (auto val : v)
    {
      cout << "T2: " << val << endl;
    }
  }
};

// Record with mutual exclusion object.
class Record
{
public:
  Record()
  {
    cout << "Record void Constructor called!!!"<<endl;    
  }
  
  Record(Record&& r) :data{move(r.data)}
  {
    cout << "Record move Constructor called!!!"<<endl;
  }

  void push(int el)
  {
    data.push_back(el);
  }

  void pop()
  {
    auto it = data.begin();
    if (!data.empty())
    {
      data.erase(it);
    }
  }

  string toString()
  {
    string res;

    res = "[ ";

    for (const int& i : data)
    {
      res += to_string(i) + " ";
    }

    res += "]";

    return res;
  }
  
private:
  mutex rm;
  vector<int> data;  
};

// Overloads << operator.
ostream& operator<<(ostream& os, const Record& record)
{ 
  // Insert everything you want into `os`
  return os << record.toString();
}

// Read data from record.
class Reader
{
public:
  Reader(Record& r) :rec{move(r)}
  {}

  // Add element in record.
  void write(int i)
  {
    rec.push(i);
  }
  
private:
  Record rec;
  
};

// Write data to record.
class Writer
{
public:
  Writer(Record& r) :rec{move(r)}
  {};

  // Add element in record.
  void write(int i)
  {
    rec.push(i);
  }
  
private:
  Record rec;
  
};

void user()
{
  thread t1 {f1};   //f() executes in separete thread.
  thread t2 {F1()}; //F()() executes in separete thread.
  
  
  t1.join();
  t2.join();
}

void user2()
{
  vector<double> some_vec {1,2,3,4,5,6,7,8,9};
  vector<double> vec2 {10,11,12,13,14,15,16,17,18,19};
  
  thread t1 {f2,ref(some_vec)};   //f2(some_vec) executes in separete thread.
  thread t2 {F2{vec2}}; //F(vec2)() executes in separete thread.
  
  
  t1.join();
  t2.join();
}

// Implements Reader/Writer Threads.
void userRecord()
{
  Record rec;
  Reader rd{rec};
  Writer wr{rec};  

  wr.write(2);
  wr.write(4);
  rd.write(6);
  
  cout << "Record: " << rec << endl;
  
  cout << "End of userRecord..." << endl;
}

int main()
{
  userRecord();
}
