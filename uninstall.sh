#!/bin/bash

sed -i '/# >>> Custom PS1 Prompt >>>/,/# <<< Custom PS1 Prompt <<</d' ~/.bashrc

echo "❌ Prompt removed. Run this to apply:"
echo "   source ~/.bashrc"
