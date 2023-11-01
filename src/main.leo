program number_reverser.aleo {
    transition reverse(public num: i128) -> i128 {
        let reversed: i128 = 0i128;
        let divider: i128 = 10i128;
        if (num < 0i128) {
            divider = -10i128;
        }
        for digitnum: i128 in 0i128..39i128 {
            if (num > 0i128) {
                let digit: i128 = num % divider;
                reversed = reversed * 10i128 + digit;
                num /= divider;
            }
        }
        return reversed;
    }
}
