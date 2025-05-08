#!/bin/bash

echo "# >>> Custom PS1 Prompt >>>" >> ~/.bashrc
echo "source $(pwd)/prompt.sh" >> ~/.bashrc
echo "# <<< Custom PS1 Prompt <<<" >> ~/.bashrc

echo "✅ Prompt installed. Restart your terminal or run:"
echo "   source ~/.bashrc"
