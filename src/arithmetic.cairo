%builtins output

from starkware.cairo.common.serialize import serialize_word

func add(a: felt, b: felt) -> (res: felt) {
    return (res=a+b);
}

func subtract(a: felt, b: felt) -> (res: felt) {
    return (res=a-b);
}

func main{output_ptr: felt*}() {
 // Call and serialize results of add, subtract, multiply, divide, modulo, and power
    let (add_result) = add(10, 5);
    serialize_word(add_result);
    let (subtract_result) = subtract(10, 5);
    serialize_word(subtract_result);
    return ();
}

func multiply(a: felt, b: felt) -> (res: felt) {
    return (res=a*b);
}

func divide(a: felt, b: felt) -> (res: felt) {
    assert b != 0, "Division by zero";
    return (res=a/b);
}

func modulo(a: felt, b: felt) -> (res: felt) {
    assert b != 0, "Modulo by zero";
    return (res=a%b);
}

func power(base: felt, exp: felt) -> (res: felt) {
    alloc_locals;
    local res = 1;
    for i in range(exp) {
        res = res * base;
    }
    return (res);
}

func factorial(n: felt) -> (res: felt) {
    alloc_locals;
    local res = 1;
    for i in range(1, n + 1) {
        res = res * i;
    }
    return (res);
}

func fibonacci(n: felt) -> (fib_num: felt) {
    alloc_locals;
    local a = 0, b = 1, fib_num = 0;
    for i in range(n) {
        fib_num = a;
        local next = a + b;
        a = b;
        b = next;
    }
    return (fib_num);
}
// Modify divide and modulo functions to return -1 in case of division or modulo by zero.
