#PS script to check canadian postal codes
Write-Host "Welcome to my little script" `n
$postal = read-host "what is your postal code? ..."
if ($postal -match '[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]') {
write-host "Looks like you are from the land of the ice and snow"
} ElseIf ($postal -match "^[0-9]{5}(?:-[0-9]{4})?$") {
write-host "Gessing you reside state side partner" 
} else {
write-host "You aren't from around these parts are you?" }
