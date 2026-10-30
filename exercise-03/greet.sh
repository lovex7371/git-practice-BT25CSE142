#!/bin/bash

echo "Enter your name:"
read name

if [ -z "$name" ]; then
    echo "Hello, Guest! Welcome."
else
    echo "Hello, $name! Welcome."
fi