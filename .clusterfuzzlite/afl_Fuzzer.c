#include <stddef.h>
#include <stdint.h>
#include <stdio.h>

// TODO(metzman): Create a test/ directory to store this and other similar
// files.
int LLVMFuzzerTestOneInput(uint8_t* buf, size_t size) {
  if (size < 2)
    return 0;

  if (buf[0] == '0')
    printf("Looks like a zero to me!\n");
  else
    printf("A non-zero value? How quaint!\n");

  return 0;
}
