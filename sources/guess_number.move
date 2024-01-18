module 0x1::guess_the_number {
    use std::debug;


    public fun enter_lottery_number( value:u8): u8 {
        assert!(value <= 10, 1666);
        value
        
    }

    public fun guess_number(num:u8):vector<u8> {
        assert!(num<=10, 1888);
        let value:u8 = enter_lottery_number(9);
        let less_num = b"too less";
        let greater_num = b"too big";
        let you_win = b"you are correct,you win";
        let result :vector<u8> = b"";
        if (num < value) {
            result = less_num;  
        } 
            else if (num > value) {
                result = greater_num;
            } 
                else {
                    result = you_win; 
                };
        result
    }

    #[test]

    fun test_guess_num():vector<u8> {
        let  b:vector<u8> = guess_number(9);
          debug::print(&b); 
        b
    }
}