# AutoBat - Link Launcher Tool

**Author**: Ajay Singh  
**Version**: 0.1  
**Release Date**: 09-01-2025

---

## Overview

AutoBat is a simple yet powerful batch script that allows users to quickly open predefined URLs using a command-line interface. Whether you need to open multiple websites simultaneously or quickly access a specific page, AutoBat makes it easy. By selecting options from a menu, users can either open all links or choose individual ones with ease.

---

## How This Tool Can Help You

- **Quick Access**: Open multiple predefined links instantly with just a few keystrokes.
- **Customizable**: Easily modify the script to add or remove links as per your needs.
- **No Browser Extensions Needed**: Works directly from your local system using batch files—no need to install additional software.
- **Efficiency**: If you frequently visit the same set of websites, AutoBat will save you time by opening them all at once.

---

## Features

- **Open All Links**: Open a set of predefined links with a single command.
- **Open Individual Links**: Choose a specific link to open from the menu.
- **Easy Interface**: Navigate with simple keystrokes to access links quickly.
- **Timeout for User Input**: If no selection is made within 10 seconds, the script will default to opening all links.

---

## How to Use

1. **Download the Script**: Download the AutoBat batch file to your computer.
2. **Modify the Links (Optional)**: Open the `.bat` file with any text editor (like Notepad) and replace the links with your own.
   - You can change `LINK1`, `LINK2`, and `LINK3` to any URLs of your choice.
3. **Run the Script**:
   - Double-click on the `.bat` file to launch the AutoBat tool.
   - A menu will appear with the following options:
     - **[A]**: Open all predefined links at once.
     - **[1]**: Open the first link.
     - **[2]**: Open the second link.
     - **[3]**: Open the third link.
     - **[E]**: Exit the program.
4. **Make Your Selection**:
   - You can either type `A`, `1`, `2`, `3`, or `E` to select your action.
   - If no input is provided within 10 seconds, it will automatically open all links.
5. **Exit**: Select `E` to exit the script once you are done.

---

## Example Usage

Upon running the script, you will be presented with the following menu:

```
---------------------------------------
      Welcome to AutoBat - Session Name!
---------------------------------------
[A] Open All Links
[1] Open Link 1
[2] Open Link 2
[3] Open Link 3
[E] Exit
---------------------------------------
```

- **Option [A]**: Opens all predefined links.
- **Option [1]**: Opens the first link.
- **Option [2]**: Opens the second link.
- **Option [3]**: Opens the third link.
- **Option [E]**: Exits the program.

If you do not make a selection, the script will wait for 10 seconds before automatically choosing **[A]** and opening all links.

---

## Technical Details

- **Written in**: Batch Script (Windows)
- **Required Environment**: Windows Operating System (any version supporting batch scripts)
- **Dependencies**: None (pure batch script)
- **Timeout Option**: 10-second timeout for user input with a default of opening all links.

---

## Tech Used

- **Batch Scripting**: The script utilizes basic batch file commands such as `set`, `choice`, `start`, and `timeout`.
- **User Interface**: Text-based user interface with a clear, simple menu system.
- **URL Management**: Defines and stores multiple URLs as environment variables, allowing them to be opened easily.

---

## Contribution

Feel free to fork the repository, make improvements, and submit pull requests. If you have any suggestions or encounter issues, please open an issue in the GitHub repository.

---

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.

--- 

Thank you for using **AutoBat**!