function foo(x: int): int {
  if (x < 0) {
    return 0; // Handle negative inputs
  } else if (x == 0) {
    return 1;
  } else {
    var result = 1;
    for (var i = 1; i <= x; i++) {
      result *= i;
    }
    return result;
  }
}

function main(): void {
  echo foo(5);
  echo foo(1000); // This will not cause a stack overflow
}

//Alternative recursive implementation with better base case handling:
function foo_recursive(x: int): int {
  if (x < 0){
    return 0; // handle negative input
  }else if (x == 0) {
    return 1;
  } else if (x > 100) { // Add a limit to avoid stack overflow for extremely large inputs
      return 0; // Or throw an exception
  } else {
    return x * foo_recursive(x - 1);
  }
}
