#PS script to check canadian postal codes

Write-Host "Welcome to my little script" `n
$postal = read-host "what is your postal code? ..."
# Allow for the processing of a user entering data in lower case to process
$postal = $postal.ToUpper()

# Canadian postal codes can't contain the letters D, F, I, O, Q, or U, and cannot start with W or Z
If ($postal -match '[ABCEGHJKLMNPRSTVXY][0-9][ABCEGHJKLMNPRSTVWXYZ] ?[0-9][ABCEGHJKLMNPRSTVWXYZ][0-9]') {
  write-host "Oh Canada, My home and native land" -fore green
}
# verifies zipcode and zip plus 4
ElseIf ($postal -match "^[0-9]{5}(?:-[0-9]{4})?$") {
  write-host "Red, White and Blue baby" -fore blue
}
# Doesn't follow either regex pattern
Else {
write-host "You aren't from around these parts are you?" -fore red}
