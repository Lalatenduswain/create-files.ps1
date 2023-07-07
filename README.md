# Creating Multiple Files with 1MB Each in Windows PowerShell

This repository provides a PowerShell script that allows you to create multiple files, each with a size of 1MB, using Windows PowerShell.

## Prerequisites

Before running the script, ensure that you have the following:

- Windows operating system with PowerShell installed.
- Write permissions in the directory where you want to create the files.

## How to Use

1. Clone this repository or download the `create-files.ps1` script.
2. Open a PowerShell command prompt or PowerShell ISE.
3. Navigate to the directory where you saved the `create-files.ps1` script.
4. Execute the script by running the following command:
   ```powershell
   .\create-files.ps1
   ```
5. The script will create the specified number of files with a size of 1MB each in the current working directory.
6. Check the current working directory to verify the creation of the files.

## Customization

- The script currently creates 7 files with a size of 1MB each. You can modify the script to create a different number of files by adjusting the `$numberOfFiles` variable in the script.
- By default, the files are named `File1.txt`, `File2.txt`, and so on. You can customize the naming convention by modifying the `$fileName` variable in the script.
- The script generates random content for each file. If you want to create files with specific content, you can modify the content generation logic in the script.

## License

This project is licensed under the [MIT License](LICENSE).
```

Feel free to customize this README.md file according to your preferences, adding any additional information or instructions that you find relevant.
