#include <iostream>
using namespace std;
#include <fstream>
#include <set>
#include <iterator>
#include <sstream>
#include <string>
#include <vector>
#include <queue>

const int max = 2e5 + 5;
int i, j;

vector<vector<int>> v;
vector<int> ans;

void dfs(int a, vector<bool> &visited)
{

    ans.push_back(a);
    visited[a] = true;

    for (int i = 0; i < v[a].size(); i++)
    {
        if (v[a][i] == 1 && (!visited[i]))
        {
            dfs(i, visited);
        }
    }
}

int main()
{

    int n;
    cin >> n;
    vector<bool> visited(n, false);
    vector<int> vec, colours(n, -1);
    int temp;
    int count = 0;

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < n; j++)
        {
            cin >> temp;
            vec.push_back(temp);
        }
        v.push_back(vec);
        vec.clear();
    }

    for (i = 0; i < n; i++)
    {
        if (!visited[i])
        {
            dfs(i, visited);
            for (auto x : ans)
                colours[x] = count;
            count++;
            ans.clear();
        }
    }

    cout << count;

    for (i = 0; i < count; i++)
    {
        cout << "$";
        for (j = 0; j < n; j++)
        {
            if (colours[j] == i)
            {
                cout << "$" << j + 1;
            }
        }
    }

    return 0;
}