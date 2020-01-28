#include <iostream>
#include <vector>
#include <chrono>
#include <ctime>
#include <random>


using namespace std;

//generation aleatoire du vecteur

namespace random_function
{
    auto generate_numbers (int N)
    {
        std::vector<int> v;
        v.resize(N);

        std::random_device random_device;
        std::mt19937 random_engine(random_device());
        std::uniform_int_distribution<int> distribution_1_100(1, 100);

        for(int i = 0 ; i < N ; i++)
        {
            v[i] = distribution_1_100(random_engine);

        }

        return v;
    }
}
//fonction du tri
namespace tri_function
{
    void tri_a_bulle(std::vector<int>& v)
    {
        int tmp;
        for (int i = v.size(); i >= 1; i--)
        {
            for (int j = 0; j < i-1; j++)
            {
                if (v[j] > v[j+1])
                {
                    tmp = v[j];
                    v[j] = v[j+1];
                    v[j+1] = tmp;
                }
            }
        }
    }

    bool test_tri(std::vector<int> v)
    {
        for (int i = 0; i < v.size()-1; i++)
        {
            if(v[i]>v[i+1]) return false;
        }
        return true;
    }

}

namespace my_display
{
    void disp_vect(std::vector<int> v)
    {
        for (int i = 0; i < v.size(); i++)
        {
            cout << v[i] <<",";
        }
        cout << " " << endl;
    }

}

int main(int argc, char *argv[])
{

    int N ;
    cout << "donnez le nombre d'element du tableau" << endl;
    cin >> N;

    auto start = std::chrono::system_clock::now();
    auto v = random_function::generate_numbers(N);

    cout << "le tableau avant le tri est: " << endl;
    my_display::disp_vect(v);

    //tri de notre tableau
    bool b = tri_function::test_tri(v);
    if (!b)
    {
        tri_function::tri_a_bulle(v);
    }



    cout << "le tableau apres le tri est:" << endl;
    my_display::disp_vect(v);
    auto end = std::chrono::system_clock::now();

    std::chrono::duration<double> elapsed_seconds = end-start;
    std::time_t end_time = std::chrono::system_clock::to_time_t(end);

    std::cout << "fin d'execution du programme " << std::ctime(&end_time) << "Temps d'éxcution: " << elapsed_seconds.count() << "s\n";

}
