# Always forget bash commands

## Debugging C++

- `ulimit -c unlimited`  
  **Creates a core dump**: Takes a snapshot of the C++ executable; debuggers like `gdb` can go back and run through it.

- `gdb <executable>`  
  **Goes through each line of the assembly as a debugger**

## General Python

- `python3 -m venv env`  
  **Make a virtual environment**: Creates an environment called whatever is after `venv`.

- `source env/bin/activate`  
  **Enter the Python environment**  

- `pycodestyle <python_exe>`  
  **Style Check Python**  

- `pylint <python_exe>`  
  **Style Check Python2**  

- `pydocstyle <python_exe>`  
  **Style Check Docstring**  

- `sudo apt install python3.*`  
  **\* represents python version to install**

- `sudo update-alternatives --config python3`  
  **Change working python version**

- `sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.\* 3`  
  **Adds installed version of python to list of versions you can set as your default in the command above**

## Web Systems Commands

- `python3 -m http.server 8000`  
  **Start local host**  

- `lynx <example_url>`  
  **Browser in Terminal**  

- `wget <example_url>`  
  **Download webpage HTML**: Used for web scraping and downloading pages.

- `curl <example_url>`  
  **Sending messages to a webpage**: Sends HTTPS requests, REST API calls, uploads/downloads files, and authentication.

- `telnet <IP> <Port>`  
  **Send WebSocket message**: Sends messages after connecting.

## Convert file types

- `for file in *.heic; do convert "$file" "${file%.heic}.png"; done`    
  **HEIC -> png/jpg**

- `for file in *.png; do convert "$file" -background white -flatten "${file%.png}.jpg"; done`  
  **png -> jpg (transparent turns white, default black)**

- `for file in *.jpg; do convert "$file" "${file%.jpg}.png"; done`  
  **jpg -> png**

## For Fun

- `figlet`  
  **Pipes into Bubble Letters**  

- `lolcat`  
  **Turns text into rainbow**  

- `cowsay`  
  **Make a cow speech bubble**  

- `asciiquarium`  
  **Animated Aquarium**  

- `sl`  
  **Steam Locomotive**  

- `fortune`  
  **Gives you a fortune**  

- `curl parrot.live`  
  **Dancing Parrot**  
