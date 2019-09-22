#!/usr/bin/env bash

function check_password_policy(){
    local password="$1"
    local password_length=${#password} # isn't it so ugly? :/

    if [[ "$password_length" -lt 8 ]]; then
        printf "Invalid Password:'%s' is smaller than 8 characters\n" "$password"
        return 1
    fi

    if [[ "$password_length" -gt 16 ]]; then
        printf "Invalid Password:'%s' is longer than 16 characters\n" "$password"
        return 2 
    fi

    if [[ "$password" != *[[:upper:]]* ]]; then
        printf "Invalid Password:'%s' doesn't contain any upper case\n" "$password"
        return 3
    fi

    if [[ "$password" != *[[:lower:]]* ]]; then
        printf "Invalid Password:'%s'  doesn't contain any lower case\n" "$password"
        return 4
    fi

    if [[ "$password" != *[[:digit:]]* ]]; then
        printf "Invalid Password:'%s' doesn't contain any digit\n" "$password"
        return 5
    fi

   printf "'%s' is a valid password\n" "$password"
   return 0
}

short_password="Abc"
long_password="Abcasdfasdfasdfasdfasdfasdfsdfasdf"
password_without_lower_case="ABASDFSF12313"
password_without_upper_case="asdfsdfsdf12313"
password_without_digit="ASdfsdfasdfasDF"
valid_password="Abcd1234"

check_password_policy "$short_password"
check_password_policy "$long_password"
check_password_policy "$password_without_lower_case"
check_password_policy "$password_without_upper_case"
check_password_policy "$password_without_digit"
check_password_policy "$valid_password"