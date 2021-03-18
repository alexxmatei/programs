#include <stdio.h>

int main(){
	#define MONTHS_IN_YEAR 12
	#define EXPECTED_YEARLY_PASSIVE_INTEREST 0.05
	#define SUM_MULTIPLIER 1 / EXPECTED_YEARLY_PASSIVE_INTEREST
	int desiredMonthlyPassiveIncome = 0;
	int goalSum = 0;
	int monthlyIncome = 0;
	float savingRateMonthly = 0.0f;
	int savedMonthlyIncome = 0;
	float yearlyExpectedInterestRate = 0.08; /* 8% */\
	int savedIncome = 0;
	
  (void)printf("Enter your monthly income:\n");
  (void)scanf("%d", &monthlyIncome);
  (void)printf("Enter your percentage saved monthly:\n");
  (void)scanf("%f", &savingRateMonthly);
  (void)printf("Enter your desired monthly passive income:\n");
  (void)scanf("%d", &desiredMonthlyPassiveIncome);
  savingRateMonthly /= 100;
  savedMonthlyIncome = monthlyIncome * savingRateMonthly;
  goalSum = desiredMonthlyPassiveIncome * MONTHS_IN_YEAR * SUM_MULTIPLIER;
	(void)printf("Your goal sum is: %d\n", goalSum);
	(void)printf("Your savings rate per month is: %f\n", savingRateMonthly * monthlyIncome);
	int years = 1;
	for ( ; savedIncome < goalSum; years++)
	{
		savedIncome = (savedIncome + savedMonthlyIncome * 12) * (1 + yearlyExpectedInterestRate);
		printf("Goal at Year %d: %d/%d(%f%%)\n", years, savedIncome, goalSum, (float)savedIncome/goalSum * 100); 
	}
	years--; /* why does for increment once moe after condition is false ? */
	(void)printf("Years required to reach goal with current income and savings: %d", years); 
}
