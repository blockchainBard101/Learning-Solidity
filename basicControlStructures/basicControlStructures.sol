// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract BasicControlStructures {
    function check_num(int256 input_num)
        public
        pure
        returns (int256, string memory)
    {
        bool isPrime = check_prime(input_num);
        if (input_num < 0) {
            if (input_num % 2 == 0) {
                return (
                    input_num,
                    "This is a negative/even number and not a prime number"
                );
            } else {
                return (
                    input_num,
                    "This is a negative/odd number and not a prime number"
                );
            }
        } else if (input_num > 0) {
            if (input_num % 2 == 0) {
                if (isPrime) {
                    return (
                        input_num,
                        "This is number is positive/even/prime number"
                    );
                } else {
                    return (
                        input_num,
                        "This is number is positive/even number and not a prime number "
                    );
                }
            } else {
                if (isPrime) {
                    return (
                        input_num,
                        "This is number is positive/odd/prime number"
                    );
                } else {
                    return (
                        input_num,
                        "This is number is positive/odd number and not a prime number"
                    );
                }
            }
        } else {
            return (input_num, "This is number is a neutral number");
        }
    }

    function check_prime(int256 num) internal pure returns (bool) {
        if (num < 2) {
            return false;
        } else if (num > 1 && num <= 5) {
            if (num == 2) {
                return true;
            } else {
                for (int256 i = 2; i < num; i++) {
                    if (num % i == 0) {
                        break;
                    } else {
                        if (i == (num - 1)) {
                            return true;
                        }
                    }
                }
                return false;
            }
        } else {
            for (int256 i = 2; i <= 5; i++) {
                if (num % i == 0) {
                    break;
                } else {
                    if (i == 5) {
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
