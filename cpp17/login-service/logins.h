#include<chrono>

using std::chrono::system_clock;
using std::chrono::steady_clock;
using std::chrono::duration_cast;
using std::chrono::seconds;
using std::chrono::milliseconds;

#include <iostream>
#include <
#include <vector>
#include <list>

using std::vector;
using std::list;

class User{

private:

char *username;
char *password;

public:
User(){}
User(char *,char *p){...}
~User();
friend ostream &operator<<(ostream &output, User &u);
char* getUsername(){...};
char* getPassword(){...};
};

class Loginn
{
public:
    string username;
    string password;

    Loginn()
    {
        username = "\0";
        password = "\0";
    }

    };

bool Loginn::ptlogin(User users[])
{
    int x;
    string ch_username = users[x].getUsername;
    string ch_password = users[x].getPassword;
    cout << "Enter username::\t";
    cin >> username;
    cout << "Enter password::\t";
    cin >> password;


    if ((username == ch_username)&&(password =ch_password))
    {
        return true;
    }
    else
    {
        return false;
    }
}


void MainMenu(User users[]);
{
//this is from where I want to call login function, not from main()
}

void main()
{


    User u2("Jamie15","t3456");
    User u3("Chris","fgh6");

User users[2]={u2,u3};

MainMenu(users);


}
