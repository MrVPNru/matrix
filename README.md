
# Custom Bash Matrix Rain 🌌

A lightweight and customizable Matrix digital rain effect written entirely in pure Bash. It uses advanced terminal manipulation features (`tput`) and handles custom coloring, random layout generation, and dynamic character rendering using ASCII codes.

This script was created from scratch as an alternative to the standard `cmatrix` utility.

## ✨ Features

- **Pure Bash:** No heavy dependencies, works on any standard Linux terminal.
- **Dynamic Character Generation:** Generates random binary codes (0 and 1) along with random Latin letters (a-z) using dynamic ASCII conversion.
- **Visual Effects:** Includes a "flash effect" that randomly highlights 10% of the falling characters in bright white, mimicking the original movie style.
- **Performance Optimized:** Includes a built-in micro-delay (`sleep 0.01`) to prevent high CPU usage.
- **Safe Exit:** Uses `trap` to safely catch termination signals (`Ctrl+C`), automatically restoring the standard mouse cursor and clearing the screen on exit.

## 🛠️ Requirements

- A Linux distribution (tested on Debian / Ubuntu with KDE Plasma).
- Support for `tput` (standard in almost all Linux terminal emulators).

## 🚀 How to Run

1. Clone or download this repository to your Linux machine.
2. Open your terminal and navigate to the script folder.
3. Make the script executable by running:
   ```bash
   chmod +x matrix.sh
   ```
4. Run the script:
   ```bash
   ./matrix.sh
   ```
5. To stop the effect and exit safely, press `Ctrl+C`.

## ⚙️ How it Works under the Hood

- **Cursor Management:** Uses `tput civis` to hide the cursor during execution so it doesn't blink across the screen.
- **Screen Mapping:** Automatically detects terminal resolution (`tput lines` / `tput cols`) to fit any screen size.
- **Coordinate Drawing:** Uses `tput cup $row $col` to draw characters at absolute random points on the matrix grid.
- **ASCII Conversion:** Uses hexadecimal formatting via `printf` to convert random numbers into standard character strings smoothly.

 Here's the command, just copy and paste into the debian console 
```bash
wget https://raw.githubusercontent.com/MrVPNru/matrix/refs/heads/main/matrix.sh && chmod +x matrix.sh && ./matrix.sh
