# bash-file-archiver

A simple Bash script to find and prepare large files for archiving. Perfect for basic disk cleanup and automation tasks.

##  Features

- Scans a specified base directory  
- Finds files larger than **20MB**  
- Creates an `archive/` directory if missing  
- Easily configurable with variables  

##  Config

Edit these variables at the top of the script:

```bash
BASE=/home/kernel_dragon/  # Directory to scan
DAYS=10                    # Reserved for future use
DEPTH=1                    # Max depth for file search
````

##  Usage

```bash
chmod +x bash-file-archiver.sh
./bash-file-archiver.sh
```

##  Output

* A list of large files is displayed
* An `archive/` folder is created under `$BASE` if needed

---

Clean, simple, effective — just Bash doing what it does best.

