#New-item -Path . -Name "Command-Made-Me.txt" -ItemType "file"  <--- This created a blank txt file

$Message = 'This message was sent to the blank text file by the script!'

$MessageTwo = 'This was also sent by the script by brudda.'

$Message, $MessageTwo | Out-File './Command-Made-Me.txt'

#Learned with Out-File must do mutliple in same command not seperate and can use variables

$PageContents = Get-Content -Path './Command-Made-Me.txt'

$PageContents

#Get-Content gets the content from a file we call the variable to output to console 

$HostStatus = Test-NetConnection -ComputerName 'www.google.com'

$HostStatus

#Test-NetConnection is a network diagnostic tool similar to pining around DNs, self, Gateway to see if we have connectivity

$DateVariable = Get-Date

$Message, $MessageTwo, $DateVariable | Out-File './Command-Made-Me.txt' 

#Got current date and sent it to file

New-item -Path . -Name "AI Made Folder" -ItemType "directory"

#Above is how to create a folder (directory) its the same as files. 

New-Item -Path '.\AI Made Folder' -Name 'Jacks-Bot.txt' -ItemType 'file'

Add-Content -Path '.\AI Made Folder\Jacks-Bot.txt' -Value "According to my calculations you are $(22 + 1) years old sir."

#Made new folder inside folder to add new file to with script and used double quotes to use equations