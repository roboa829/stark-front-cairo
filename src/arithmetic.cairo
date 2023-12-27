%builtins output

from starkware.cairo.common.serialize import serialize_word

func add(a: felt, b: felt) -> (res: felt) {
    return (res=a+b);
}

func subtract(a: felt, b: felt) -> (res: felt) {
    return (res=a-b);
}

func main{output_ptr: felt*}() {
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
