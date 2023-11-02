echo "Choose a temperature scale to convert:"
echo "1. Celsius to Fahrenheit"
echo "2. Fahrenheit to Celsius"
read choice

case $choice in
  1)
    echo "Enter a temperature in Celsius (between 0°C and 100°C):"
    read celsius
    if ((celsius >= 0 && celsius <= 100)); then
      degf=$($BC_COMMAND <<< "scale=2; $celsius * 9/5 + 32")
      echo "$celsius°C is equal to $degf°F"
    else
      echo "Temperature out of range."
    fi
    ;;
  2)
    echo "Enter a temperature in Fahrenheit (between 32°F and 212°F):"
    read fahrenheit
    if ((fahrenheit >= 32 && fahrenheit <= 212)); then
      degc=$($BC_COMMAND <<< "scale=2; ($fahrenheit - 32) * 5/9")
      echo "$fahrenheit°F is equal to $degc°C"
    else
      echo "Temperature out of range."
    fi
    ;;
  *)
   echo "Invalid choice. Please select 1 or 2."
    ;;
esac

