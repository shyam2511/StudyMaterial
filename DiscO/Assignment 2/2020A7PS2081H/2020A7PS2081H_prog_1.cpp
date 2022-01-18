#include <bits/stdc++.h>
using namespace std;
int main()
{
     ifstream file("input.txt");
     int n;
    if(!file) 
  {
    cout<<"Error opening output file"<<endl;
    system("pause");
    return -1;
  }
  vector<vector<int>> adjmatrix;
  vector<int> matrix;
  vector<int> verticescolor;
  int flag;
  int vertices,cnt = 0;
  while(file>>n)
  {
      if(cnt == 0)
      {
          vertices = n;
      }else if(cnt<=vertices*vertices){
          if(cnt%vertices!=0)
          {
              matrix.push_back(n);
          }else{
              matrix.push_back(n);
              adjmatrix.push_back(matrix);
              matrix.clear();
          }
      }else
      {
          verticescolor.push_back(n);
      }
      cnt++;
  }
  map<int,int> v;
  for(int i=0;i<verticescolor.size();i++)
  {
      v.insert({i+1,1});
  }
  vector<int> v1;
  map<int,vector<int>> m;
  for(int i = 0; i<adjmatrix.size();i++)
  {
      for(int j= 0 ;j< adjmatrix[i].size();j++)
      {
          if(adjmatrix[i][j]==1 && j+1>=i+1)
          v1.push_back(j+1);
      }
      m.insert({i+1,v1});
      v1.clear();
  }
  for(auto it = m.begin();it!=m.end();it++)
  {
      
      for(int k:it->second)
      {
          
          if(v[k]==v[it->first])
          {
              v[k]++;
              flag  = 0;
          }
      }
      
  }
  int result = 1,i=0;
  for(auto it = v.begin();it!=v.end();it++)
  {
      if(it->second != verticescolor[it->first-1])
      {
          result = 0;
      }
      i++;
  }
  cout<<result<<endl;
    return 0;
}  
