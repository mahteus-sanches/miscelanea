#include <limits>
#include <iostream>

int main() 
{
          std::cout << "float\t"
          << std::numeric_limits<float>::lowest() << '\t'
          << std::numeric_limits<float>::max() << '\n';
          std::cout << "double\t"
          << std::numeric_limits<double>::lowest() << '\t'
          << std::numeric_limits<double>::max() << '\n';
}