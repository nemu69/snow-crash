#include <string>

int main(int ac, char **av)
{
    if (ac == 1)   
        return 1;
    std::string str = av[1];
    for (int i = 0; i != str.length(); i++)
        str[i] = str[i] - i;
    printf("%s\n", str.c_str());
    return (0);
}