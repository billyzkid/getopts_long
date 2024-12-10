#!/usr/bin/env bats

load ../test_helper

@test "${FEATURE}: silent" {
    compare '' ''
}
@test "${FEATURE}: verbose" {
    compare '' ''
}

@test "${FEATURE}: extra arguments, silent" {
    compare 'user_arg' \
            'user_arg'
}
@test "${FEATURE}: extra arguments, verbose" {
    compare 'user_arg' \
            'user_arg'
}

@test "${FEATURE}: terminator, extra arguments, silent" {
    compare '-- user_arg' \
            '-- user_arg'
    expect  "${getopts_long_lines[4]}" == '$@: user_arg'
}
@test "${FEATURE}: terminator, extra arguments, verbose" {
    compare '-- user_arg' \
            '-- user_arg'
    expect  "${getopts_long_lines[4]}" == '$@: user_arg'
}
