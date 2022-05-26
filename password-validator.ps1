
# alert message that prints when the isn't validate
$message = "the password should contain uppercase,lowercase and numbers and 10 characters long"



if($args[0] -eq "-f"){

    $pass = Get-Content $args[1]

}else{

    $pass = $args[0]
 
}

# this if condition check if password contain numbers using regex.
if(($pass -notmatch '[0-9]')){

    Write-Host -ForegroundColor red "missing numbers $message"

# this elseif checks if password contain lowercase letters using regex.
} elseif(($pass -cnotmatch '[a-z]')){

    Write-Host -ForegroundColor red "missing lowercase $message"

# this elseif check if password contain uppercase letters using regex.
} elseif(($pass -cnotmatch '[A-Z]')){

    Write-Host -ForegroundColor red "missing uppercase $message"

# this elseif check if password length short than 10 digits.   
} elseif(($pass.Length -lt 10)){

    Write-Host -ForegroundColor red "password too short $message"

# print message if the password is okay.
} else{

    Write-Host -ForegroundColor green "password is validate"

}

