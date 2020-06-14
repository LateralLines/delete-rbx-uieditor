Many developers adamently despise of the UI Editor simply because it lacks a native toggle button in Studio. From what I understand, there are a handful of user-made plugins that partially disable it, though it appears for nearly THREE years roblox devs have ignored are plees.


However, many still go out of their way to delete the plugin file itself every time studio updates. To streamline the deletion process a bit, I have written a couple simple commands/scripts that do this for you. Download the resource files here and follow the instructions below.


# Method 1 - Manually execute a command

1. Open the command prompt (Win+R, type cmd, and hit enter)
2. Enter the following command: 
> cd "%localappdata%/roblox/versions" && del /s uieditor*


# Method 2 - Register a task in the task scheduler

1. Open the task scheduler (not task manager)
2. On the right, click Create Task
3. Enter a unique name
4. Navigate to the Tiggers tab and hit New...
5. At the top where it says Begin the task, select At log on. Specifiy the specfic user below and click OK.
6. Navigate to the Actions tab and hit New...
7. Copy the directory path of the downloaded Resources folder
8. Type the following within the two apostrophes: 'wscript "PASTE\init.vbs" "PASTE\Source.bat"' (paste the path copied in step 7 wherever I put 'PASTE')
9. Click OK, Yes, and OK
10. Restart and relogin to your computer to trigger the script


NOTE #1 - To change the frequency at which the plugin files are deleted, open Source.bat and change the 15 on line 4 to the desired whole number amount (in seconds)

NOTE #2 - **Do not** rename, move, or delete the resources folder, along with its contents, that is referenced by the task scheduler, as this will cause the task to error and terminate itself.
