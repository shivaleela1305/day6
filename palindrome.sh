is_palindrome() {
  local num="$1"
  local reversed=" "
  local original="$num"

  # Reverse the number
  while [ "$num" -gt 0 ]; do
    digit=$((num % 10))
    reversed="${reversed}${digit}"
    num=$((num / 10))
  done

  # Check if the reversed number is equal to the original number
  if [ "$original" -eq "$reversed" ]; 
  then
    return 0  # It's a palindrome
  else
    return 1  # It's not a palindrome
  fi
}

check_palindromes() {
  read -p "Enter the first number: " num1
  read -p "Enter the second number: " num2

  if is_palindrome "$num1" && is_palindrome "$num2"; then
    echo "Both numbers are palindromes."
  else
    echo "At least one of the numbers is not a palindrome."
  fi
}

# Call the function to check palindromes
check_palindromes
