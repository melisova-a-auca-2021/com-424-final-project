# com-424-final-project – Custom PS1 Prompt 🖥️✨

### 🎥 Video Presentation

📺 [Watch on Google Drive](https://drive.google.com/file/d/18kYsP6_qSX76vIxhVbl91MzXS7JAAiLG/view?usp=sharing)

This project is about customizing the **Linux terminal prompt (PS1)** to make it more informative, visually appealing, and useful for developers. We enhanced it using:

- ✅ **Username & hostname**
- ✅ **Current working directory**
- ✅ **Git branch detection**
- ✅ **Command success/failure status**
- ✅ **Active Python virtual environment**
- ✅ **Current date and time**
- ✅ **Background job count**
- ✅ **Color-coded output and emojis**

---

## 📁 Project Files

| File            | Description |
|-----------------|-------------|
| `colors.sh`     | ANSI and 256-color definitions |
| `functions.sh`  | Status, jobs, git, venv helpers |
| `prompt.sh`     | PS1 construction logic |
| `install.sh`    | One-click installer to apply prompt |
| `uninstall.sh`  | One-click uninstaller to remove prompt |
| `README.md`     | Project documentation |

---

## 🧪 How to Test It

1. Clone this repo or download the files.
2. Run the installer:

```bash
chmod +x install.sh 
./install.sh
```

3. Remove the installer:

```bash
chmod +x uninstall.sh
./uninstall.sh
```
