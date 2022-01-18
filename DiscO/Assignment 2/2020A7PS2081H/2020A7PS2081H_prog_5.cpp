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

int main()
{

    int n;
    cin >> n;
    vector<vector<int>> v;
    vector<int> vec, level(n, 0), visited(n, 0);
    int temp;

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

    int root;
    cin >> root;
    root--;
    level[root] = 0;
    visited[root] = 1;

    queue<int> q;
    q.push(root);

    while (!q.empty())
    {
        int u = q.front();
        q.pop();
        for (i = 0; i < n; i++)
        {
            if (v[u][i] == 1 && visited[i] == 0)
            {
                level[i] = level[u] + 1;
                visited[i] = 1;
                q.push(i);
            }
        }
    }
    cout << endl;

    for (i = 0; i < n; i++)
    {
        if (i != n - 1)
            cout << level[i] << "$";
        else
            cout << level[i];
    }

    return 0;
}