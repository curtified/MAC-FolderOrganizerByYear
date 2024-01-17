Folder Organizer By Year - AppleScript - MAC ONLY
========================

This AppleScript is designed for macOS users to streamline the organization of folders within a selected directory by their creation year. It is especially useful for managing large directories like photo collections, documents, or any scenario where folders accumulate over time.

### Key Features
- **User Interaction**: Prompts the user to select a directory and input a custom base name for new folder organization.
- **Customizable Naming Scheme**: The script creates or identifies folders named according to the pattern '[USER INPUT] - [YEAR]', combining the user's base name with the creation year of the folders.
- **Smart Organization**: Sorts existing folders into these new directories based on their creation year. If a folder for a specific year already exists, the script merges the contents, thereby avoiding duplication and maintaining an organized directory structure.
- **Error Handling and Logging**: Alerts the user in case of issues during folder creation or item movement and logs actions for a clear view of the script's operations.

### How It Works
1. **Select a Folder**: The user is prompted to choose a directory that contains the folders to be organized.
2. **Enter a Base Name**: The user inputs a base name for the new folders. This name will be used as a prefix for the newly organized folders.
3. **Script Execution**: The script organizes the folders, creating new ones or merging into existing ones based on the naming scheme '[USER INPUT] - [YEAR]'.

### Example
- User inputs "Project" as the base name.
- The script finds or creates folders like 'Project - 2019', 'Project - 2020', etc., based on the creation year of the existing folders.

### Important Notes
- This script is tailored for macOS.
- Users are advised to back up their data before running the script.
- The script's efficiency and accuracy depend on the correct creation dates of the folders.

This tool is an efficient solution for users needing to organize large numbers of folders in a structured and easily navigable format.
