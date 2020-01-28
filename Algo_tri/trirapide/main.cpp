#include<bits/stdc++.h>

using namespace std;
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
int partition(std::vector<int>& v,int start,int end)
{
    int pivot=v[end];
    

    int P_index=start;
    int i,t; //t est une variable de passage

    //compraison entre le pivot et les autres valeurs du vecteur

    for(i=start;i<end;i++)
    {
        if(v[i]<=pivot)
        {
            t=v[i];
            v[i]=v[P_index];
            v[P_index]=t;
            P_index++;
        }
    }
    //echanger les valeurs du pivot et P_index
    
    t=v[end];
    v[end]=v[P_index];
    v[P_index]=t;


    return P_index;
}
namespace tri_function{
    void tri_rap(std::vector<int>& v,int start,int end)
    {
        if(start<end)
        {
            int P_index=partition(v,start,end);
            tri_rap(v,start,P_index-1);
            tri_rap(v,P_index+1,end);
        }
    }
}
//affichage
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

int main()
{
    int N ;
    cout << "donnez la taille du vecteur:" << endl;
    cin >> N;

    auto start = std::chrono::system_clock::now();

    auto v = random_function::generate_numbers(N);

    cout << "le vecteur avant le tri:" << endl;
    my_display::disp_vect(v);


    tri_function::tri_rap(v,0,N-1);
    cout << "le vecteur apres le tri:" << endl;
    my_display::disp_vect(v);
    auto end = std::chrono::system_clock::now();

    std::chrono::duration<double> elapsed_seconds = end-start;
    std::time_t end_time = std::chrono::system_clock::to_time_t(end);
    std::cout << "La fin de l'éxcution " << std::ctime(&end_time) << "Temps d'éxcution: " << elapsed_seconds.count() << "s\n";

    return 0;
}
