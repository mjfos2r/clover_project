#!/bin/bash

#okay, look for the unmapped reads, move them to a folder one level up called unmapped

find -f *.unmapped.fq parallel mv {} ../unmapped/
