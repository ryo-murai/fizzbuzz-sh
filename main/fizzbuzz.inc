pfizbuz() {
    case "$(($1 % 3)),$(($1 % 5))" in
        0,0 )  echo FizzBuzz ;;
        0,* )  echo Fizz ;;
        *,0 )  echo Buzz ;;
        * )    echo $1 ;;
    esac
}

