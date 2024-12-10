# Try to run this program while being in and outside the "powershell" folder!
"`n"
"The current file we are trying to run is in this location:`n`t$PSScriptRoot`n"
"Currently, we are in this location:`n`t$(Get-Location)`n"

"If we run the hello_world.ps1 by running this line:`n`t& `".\hello_world.ps1`"`n"

& ".\hello_world.ps1"

if ($?) {
    "`nWe are able to run the program!`n"
}
else {
    "`nWE GET AN ERROR! WE'RE NOT IN THE SAME DIRECTORY AS THE FILE WE RUNNING ON POWERSHELL!`n"
}

"To actually run the script anywhere, powershell will run this line inside the script:`n`t& `"`$PSScriptRoot\hello_world.ps1`"`n"
"Below is the output when we run that line instead:"

& "$PSScriptRoot\hello_world.ps1"
