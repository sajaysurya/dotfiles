#!/bin/bash

# swaps esc and capslock
# maps tilde to left shift
# maps +/- to tilde
# swaps enter and backslash

hidutil property --set '{
"UserKeyMapping":[
    {
        "HIDKeyboardModifierMappingSrc":0x700000064,
        "HIDKeyboardModifierMappingDst":0x700000035
    },
    {
        "HIDKeyboardModifierMappingSrc":0x700000035,
        "HIDKeyboardModifierMappingDst":0x7000000E1
    },
    {
        "HIDKeyboardModifierMappingSrc":0x700000029,
        "HIDKeyboardModifierMappingDst":0x700000039
    },
    {
        "HIDKeyboardModifierMappingSrc":0x700000039,
        "HIDKeyboardModifierMappingDst":0x700000029
    },
    {
        "HIDKeyboardModifierMappingSrc":0x700000031,
        "HIDKeyboardModifierMappingDst":0x700000028
    },
    {
        "HIDKeyboardModifierMappingSrc":0x700000028,
        "HIDKeyboardModifierMappingDst":0x700000031
    },
]}'
