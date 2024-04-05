#include <iostream>
using namespace std;

bool compare(double, double, int);

int main()
{
    int max_terms = 2147483646;
    double small = 1e-320;
    double Sm = 1;
    double sum = 1;
    double pi = 3.1415926535897932384626433832795028841971693993751;

    for(int m=1; m<max_terms; m++)
    {
        Sm *= m / (2.0*m+1);
        sum += Sm;
        
    }
    if(compare(2*sum, pi, 1000 ))
    {
        cout << "Good" << endl;
    }
    else
    {
        cout << "Bad" << endl;
    }

    cout.precision(50);
    cout << 2*sum << endl;

    return 0;
}

bool compare(double x, double y, int precision){
    if ((int)(x*precision+.5) == ((int)(y*precision+.5)))
        return true;
    else return false;
}