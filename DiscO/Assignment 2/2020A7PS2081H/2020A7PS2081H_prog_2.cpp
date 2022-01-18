#include <bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    int flag;
    ifstream file("input.txt");
    if(!file)
    {
        cout<<"Error opening output file"<<endl;
        system("pause");
        return -1;
    }
    int vertices,cnt = 0;
    vector<vector<int>> adjmatrices;
    vector<int> matrix;
    while(file >> n)
    {
        if(cnt == 0)
        {
            vertices = n;
        }else
        {
            if(cnt%vertices!=0)
            {
                matrix.push_back(n);
            }else{
                matrix.push_back(n);
                adjmatrices.push_back(matrix);
                matrix.clear();
            }
        }
        cnt++;
    }
 
    map<int,vector<int>> m;
    for(int i=0;i<adjmatrices.size();i++)
    {
        vector<int> v;
        for(int j = 0;j<adjmatrices[i].size();j++)
        {
            if(adjmatrices[i][j]==1)
            v.push_back(j+1);
        }
        m.insert({i+1,v});
        v.clear();
        flag = 1;
    }
    
    bool result = true;
    vector<int> vec(vertices,1);
    vector<int> vb(vertices,0);
    for(auto it = m.begin();it!=m.end();it++)
    {
        if(vec[it->first]==1)
        {
            for(int i:it->second)
            {
                if(vb[i]==0)
                {
                    vec[i] = 2;
                    vb[i]++;
                    vb[it->first]=1;
                }else
                {
                    if(vec[i]==1)result = false;
                }
            }
        }else
        {
            for(int i:it->second)
            {
                if(vb[i]==0)
                {
                    vec[i] = 1;
                    vb[i]++;
                     vb[it->first]=1;
                }else
                {
                    if(vec[i]==2)
                        flag = 0;
                        result = false;
                }
            }
        }
        
    }
    cout<<result;
    return 0;
}