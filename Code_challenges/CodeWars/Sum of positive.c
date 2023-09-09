#include <stddef.h>

int positive_sum(const int *values, size_t count);

int positive_sum(const int *values, size_t count)
{
  int positiveSum = 0;
  
  for (int i = 0; i < count; i++) {
    if (values[i] > 0) {
      positiveSum += values[i];
    }
  }
  
  return positiveSum;
}
