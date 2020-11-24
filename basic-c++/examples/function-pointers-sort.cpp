#include<stdio.h>

using namespace std;


bool compare(int a, int b)
{
	if (a > b)
	{
		return false;
	}
	else
	{
		return true;
	}
}

void BubbleSort(int *A, int n, bool (*fptr)(int,int))
{
	int i,j,temp;
	for (i = 0; i < n; i++)
		for (j = 0; j < n - 1; j++)
		{
			if (fptr(A[j],A[j+1])) // true if SWAP is needed.
			{
				temp = A[j];
				A[j] = A[j+1];
				A[j+1]= temp;
			}
		}
}

int main()
{
	int i, A[] = {3,2,1,5,6,4};
	BubbleSort(A, 6, compare);
	for (i = 0; i < 6; i++)
	{
		cout << A[i] << " ";
	}
}
	
