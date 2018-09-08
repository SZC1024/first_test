#include<iostream>
#include<cstdlib>
#include<fstream>
#include<ctime>
#include<cmath>
using namespace std;
const double minimum=1.7e-308;
const double maximum=1.7e308;
const char *input="123.txt";
const char *output="output.txt";
int heapsize;
int edgesize;
struct edge{
    int vertex;
    double key;
    edge* next;
};


void matrix_to_mapchain(double** matrix,edge** E,int size);
double** get_matrix(int size);
int format_matrix(double** matrix,int size);
void print_mapchain(edge** E,int size);
//预处理函数
edge* get_edge(edge* B,int v,int k,edge* e=NULL){
    if(edgesize>0){
        edgesize--;
        B[edgesize].key=k;
        B[edgesize].vertex=v;
        B[edgesize].next=e;
        return &B[edgesize];
    }else return NULL;
}
void matrix_to_mapchain(double** matrix,edge** E,int size,edge* B){//并且将原来从0开始编号的矩阵转换为从1开始编号的邻接链表
    for(int i=0;i<size+1;i++){
        E[i]=NULL;
    }
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            if(i!=j&&matrix[i][j]!=maximum){
                E[i+1]=get_edge(B,j+1,matrix[i][j],E[i+1]);//E[i+1]=new edge(j+1,matrix[i][j],E[i+1]);//链条头插
            }
        }
    }
}
double** get_matrix(int size){//from 123.txt
    double **matrix=new double*[size];
    for(int i=0;i<size;i++){
        matrix[i]=new double[size];
    }
    ifstream fin(input);//matrix从文件写入
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            fin>>matrix[i][j];
        }
    }
    return matrix;
}
int format_matrix(double** matrix,int size){
    int maxi_num=0;
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            if(i==j) matrix[i][j]=0;
            else if(matrix[i][j]==0){
                matrix[i][j]=maximum;
                maxi_num++;
            }
        }
    }
    return maxi_num;
}
//堆操作函数
void min_heapify(double* A,int i,int* Atorelate,int* relate){//堆调整函数，属内部函数
    int l=2*i,r=2*i+1;
    int min,tempint;
    double tempdouble;
    if(l<=heapsize&&A[i]>A[l]){
        min=l;
    }else{
        min=i;
    }
    if(r<=heapsize&&A[min]>A[r]){
        min=r;
    }
    if(min!=i){
        //exchange A[i] with A[min]
        tempdouble=A[min];
        A[min]=A[i];
        A[i]=tempdouble;
        //exchange Atorelate[i] with Atorelate[min]
        tempint=Atorelate[min];
        Atorelate[min]=Atorelate[i];
        Atorelate[i]=tempint;
        //exchange relate[Atorelate[i]] with relate[Atorelate[min]]
        tempint=relate[Atorelate[i]];
        relate[Atorelate[i]]=relate[Atorelate[min]];
        relate[Atorelate[min]]=tempint;
        min_heapify(A,min,Atorelate,relate);//尾递归支持循环改进
    }
}
void make_heap(double* A,int* Atorelate,int* relate){
    for(int i=heapsize/2;i>0;i--){
        min_heapify(A,i,Atorelate,relate);
    }
}
int decrease_key(double* A,int i,double k,int* Atorelate,int* relate){
    double tempdouble;
    int tempint;
    if(k<A[i]){
        A[i]=k;
        while(i>1&&A[i/2]>A[i]){
            //exchange A[i] wuth A[i/2];
            tempdouble=A[i];
            A[i]=A[i/2];
            A[i/2]=tempdouble;
            //exchange Atorelate[i] whit Atorelate[i/2]
            tempint=Atorelate[i];
            Atorelate[i]=Atorelate[i/2];
            Atorelate[i/2]=tempint;
            //exchange relate[Atorelate[i]] with relate[Atorelate[i/2]]
            tempint=relate[Atorelate[i]];
            relate[Atorelate[i]]=relate[Atorelate[i/2]];
            relate[Atorelate[i/2]]=tempint;
            i/=2;
        }
        return 0;
    }else{
        return -1;
    }
}
int extract_min(double* A,int* Atorelate,int* relate){
    double min;
    int tempint;
    if(heapsize>=1){
        //exchange A[1] with A[heapsize]
        min=A[1];
        A[1]=A[heapsize];
        A[heapsize]=min;
        //exchange Atorelate[1] with Atorelate[heapsize]
        tempint=Atorelate[1];
        Atorelate[1]=Atorelate[heapsize];
        Atorelate[heapsize]=tempint;
        //exchange relate[Atorelate[1]] with relate[Atorelate[heapsize]]
        tempint=relate[Atorelate[1]];
        relate[Atorelate[1]]=relate[Atorelate[heapsize]];
        relate[Atorelate[heapsize]]=tempint;
        heapsize--;
        min_heapify(A,1,Atorelate,relate);
        return Atorelate[heapsize+1];//返回当前探知的最小结点的结点编号
    }else{
        return -1;
    }
}
//主算法函数
void initialize(double* A,int* Atorelate,int* relate,int source){//堆结构初始化（建堆，建立数据联接和准备数据）
    for(int i=0;i<=heapsize;i++){
        A[i]=maximum;//初始化source可达列
        relate[i]=Atorelate[i]=i;
    }
    A[source]=0;
    make_heap(A,Atorelate,relate);
}
void dijkstra(double* A,int* Atorelate,int* relate,double** matrix,edge** E,int source){//基于图的邻接链表
    //initialize(A,Atorelate,relate,source);
    int min,i;
    edge* temp;
    while(heapsize>1){
        min=extract_min(A,Atorelate,relate);
        for(temp=E[min];temp!=NULL;temp=temp->next){
            i=relate[temp->vertex];
            if(i<=heapsize&&A[i]>A[relate[min]]+matrix[min-1][temp->vertex-1]){
                decrease_key(A,i,A[relate[min]]+matrix[min-1][temp->vertex-1],Atorelate,relate);
            }
        }
    }
}

//额外显示函数
void print(double** matrix,int size){
    for(int i=0;i<size;i++){
        for(int j=0;j<size;j++){
            cout<<matrix[i][j]<<" ";
        }
        cout<<endl;
    }
}
void print_mapchain(edge** E,int size){
    for(int i=0;i<size+1;i++){
        cout<<i<<" --> ";
        for(edge* temp=E[i];temp!=NULL;temp=temp->next){
            cout<<temp->vertex<<"-"<<temp->key<<" --> ";
        }
        cout<<endl;
    }
}
void print_shortest_value(double* A,int* relate,int size,int source){
    for(int i=1;i<=size;i++){
        cout<<source<<"->"<<i<<":"<<A[relate[i]]<<endl;
    }
}

int main(){
    clock_t first,finish;
    int size,source;
    cin>>size;
    heapsize=size;
    cin>>source;
    double bit_A[size+1];
    int bit_Atorelate[size+1];
    int bit_relate[size+1];

    edge** E=new edge*[size+1];
    double **matrix=get_matrix(size);
    int maxi_mun=format_matrix(matrix,size);
    edgesize=size*(size)-maxi_mun;
    edge* edge_store=new edge[edgesize];
    matrix_to_mapchain(matrix,E,size,edge_store);

    cout<<"edge builded"<<endl;
    double bitave=0;

    int circle;
    cin>>circle;
    for(int i=0;i<circle;i++){
        source++;//源点
        heapsize=size;

        initialize(bit_A,bit_Atorelate,bit_relate,source);

        cout<<"initial finished"<<endl;



        first=clock();
        dijkstra(bit_A,bit_Atorelate,bit_relate,matrix,E,source);
        finish=clock();
        cout<<"binary heap use time"<<finish-first<<"ms"<<endl;
        bitave+=(finish-first);


    }
    cout<<"bit average:"<<bitave/circle<<endl;









    system("pause");
    return 0;
}