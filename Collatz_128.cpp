// Collatz.cpp : This file contains the 'main' function. Program execution begins and ends there.
//This for Lothar Collatz conjecture
//This code can count to 256 bits 

// Vesion 1.1 2024_1_20

#include <iostream>
#include "Collatz_128.h"
#include <stdio.h>
#include <stdlib.h>
#include <fstream>
int main()
{
	unsigned long long step;
	unsigned long long a = 0x93;
	unsigned long long b = 0;
	unsigned long long d=1;
	int i = 0;
	higher = 0;
	b = a;
	d = higher;
	for (i = 0; i < 3; ++i)
	{
		step = 0;
		std::cout << "   a=0x" << std::hex << a << "\n";

		while ((higher != 0) | (a != 1))
		{
			a = ConCall(a, higher);
			++step;
			std::cout << "a=0x" << a << "\n";
		}
		std::cout << "   a=0x" << std::hex << a;
		std::cout << "   s=" << step << "\n\n\n";
		++b;
		a = b;
		higher=d;

	}
	return(0);
}
