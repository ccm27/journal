#!/bin/bash

zenity --notification --text="Welcome To Simple journal! You can record simple events every day here!" --window-icon="dialog-information"
#!/bin/sh
zenity --question --text="Would You Like To Create A New journal Entry?" --ok-label="Yes" --cancel-label="No, Edit and Look At Existing"
if [ $? = 0 ] ; then
command=$()
n="$(touch ~/journal.txt; var="$(zenity --calendar| cat)"; zenity --entry --entry-text=$var --text="Enter a Simple and fast entry")"
 echo $n$'\r' >> ~/journal.txt

zenity --notification --text="Congrats! You Created An Event!" --window-icon="event-new"
else 
command=$()
r="$(zenity --text-info --editable --filename=journal.txt)" 
echo $r > journal.txt
zenity --notification --text="Great!! You Just edited your journal!" --window-icon="edit"
fi

