
source ./zsh/.functions


echo "Select one option using up/down keys and enter to confirm:"
echo

options=("one" "two" "three")

select_option "${options[@]}"
choice=$?

echo "Choosen index = $choice"
echo "        value = ${options[$choice]}"
