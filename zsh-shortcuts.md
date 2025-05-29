# Zsh Keyboard Shortcuts & Pro Tips

Quick reference for zsh plugins and terminal shortcuts configured in `.zshrc`.

## 🔥 Most Used Shortcuts

| Shortcut | Action | Plugin |
|----------|--------|--------|
| `Ctrl + R` | Search command history | Built-in/FZF |
| `→` (Right Arrow) | Accept autosuggestion | zsh-autosuggestions |
| `Ctrl + T` | Fuzzy find files | FZF |
| `Tab` | Auto-complete | Built-in |
| `Ctrl + L` | Clear screen | Built-in |

## 📝 Line Editing

### Navigation
- `Ctrl + A` - Move to beginning of line
- `Ctrl + E` - Move to end of line
- `Option + ←/→` - Move word by word (Mac)
- `Ctrl + ←/→` - Move word by word (Linux)

### Deletion
- `Ctrl + U` - Delete from cursor to beginning of line
- `Ctrl + K` - Delete from cursor to end of line
- `Ctrl + W` - Delete word before cursor
- `Option + D` - Delete word after cursor (Mac)
- `Alt + D` - Delete word after cursor (Linux)

### Control
- `Ctrl + C` - Cancel current command
- `Ctrl + Z` - Suspend current process
- `Ctrl + D` - Exit shell (if line is empty)

## 🔍 History & Search

### History Navigation
- `↑/↓` - Navigate command history
- `Ctrl + R` - Reverse search through history
- `!!` - Repeat last command
- `!n` - Execute command number n from history
- `!string` - Execute last command starting with "string"
- `!$` - Use last argument from previous command

## 🤖 Autosuggestions (zsh-autosuggestions)

- `→` (Right Arrow) - Accept entire suggestion
- `Ctrl + →` - Accept suggestion word by word
- `Ctrl + F` - Accept entire suggestion (alternative)
- `End` - Accept entire suggestion
- `Ctrl + E` - Accept entire suggestion (alternative)

## 🔍 FZF (Fuzzy Finder)

### Main Commands
- `Ctrl + R` - Search command history
- `Ctrl + T` - Search files and directories
- `Alt + C` / `Option + C` - Change directory using fuzzy search
- `**<Tab>` - Fuzzy completion (e.g., `vim **<Tab>`)

### Within FZF Interface
- `Ctrl + J/K` or `↓/↑` - Navigate up/down
- `Enter` - Select item
- `Ctrl + C` or `Esc` - Cancel
- `Tab` - Mark multiple items
- `Ctrl + A` - Select all
- `Ctrl + D` - Deselect all

## 🔧 Git Plugin Aliases

### Essential Git Shortcuts
```bash
g       # git
ga      # git add
gc      # git commit -v
gco     # git checkout
gd      # git diff
gl      # git pull
gp      # git push
gst     # git status
gb      # git branch
glog    # git log --oneline --decorate --graph
```

### More Git Aliases
```bash
gaa     # git add --all
gcm     # git checkout main/master
gcp     # git cherry-pick
grh     # git reset --hard
grhh    # git reset --hard HEAD
gss     # git status --short
gwip    # git add -A; git rm $(git ls-files --deleted) 2> /dev/null; git commit --no-verify -m "wip"
```

## ⚡ Powerlevel10k Theme

### Configuration
- `p10k configure` - Run configuration wizard
- `p10k reload` - Reload configuration

## 🎯 Tab Completion

### Basic Usage
- `Tab` - Auto-complete command/file/directory
- `Tab Tab` - Show all available completions
- `Ctrl + X Ctrl + H` - Show help for current completion

### Advanced Patterns
- `*` - Match any characters
- `?` - Match single character
- `**` - Match directories recursively
- `{a,b,c}` - Match any of a, b, or c

## 💡 Pro Tips

### 1. History Expansion
```bash
!!          # Previous command
!$          # Last argument of previous command
!^          # First argument of previous command
!*          # All arguments of previous command
^old^new    # Replace 'old' with 'new' in previous command
```

### 2. Directory Navigation
```bash
cd -        # Go to previous directory
dirs -v     # Show directory stack with numbers
cd ~2       # Go to directory #2 in stack
```

### 3. Glob Patterns
```bash
ls **/*.js          # Find all .js files recursively
rm !(*.txt)         # Remove all files except .txt files
ls file{1..10}.txt  # Match file1.txt through file10.txt
```

### 4. Command Substitution
```bash
cd $(fzf)           # Change to directory selected with fzf
vim $(fzf)          # Edit file selected with fzf
```

### 5. FZF Integration Examples
```bash
# Kill process with fzf
kill -9 $(ps aux | fzf | awk '{print $2}')

# Checkout git branch with fzf
git checkout $(git branch | fzf)

# Open file in specific directory
vim $(find . -type f | fzf)
```

## 🚨 Emergency Commands

- `Ctrl + C` - Stop current command
- `Ctrl + Z` - Suspend current process (use `fg` to resume)
- `reset` - Reset terminal if it gets messed up
- `clear` or `Ctrl + L` - Clear screen
- `exit` or `Ctrl + D` - Exit shell

## 📚 Learning Resources

- [Oh My Zsh Wiki](https://github.com/ohmyzsh/ohmyzsh/wiki)
- [FZF Documentation](https://github.com/junegunn/fzf)
- [Zsh Manual](http://zsh.sourceforge.net/Doc/Release/zsh_toc.html)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

---

*Last updated: May 29, 2025*
*Configuration file: `~/.zshrc`*
