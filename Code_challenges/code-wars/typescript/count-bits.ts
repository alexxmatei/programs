export function countBits(n: number): number {
  let i = 0
  // First we need to determine the number size and the MSB
  // We start by determining the number interval based on powers of 2
  for (i = 0; n >= Math.pow(2,i); i++) {
    console.log("Number: ", n)
    console.log("i:", i)
  }
  // default return
  return 0;
}
