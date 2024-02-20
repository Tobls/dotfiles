# Neovim Config

## 1. Installation

### Neovim

#### Windows
Um auf Windows zu installieren wird folgendes benötigt
```
choco install llvm
choco install ripgrep
```

#### Linux
Auf Linux werden wie folgenden Pakete benötigt
```
sudo apt install clang ripgrep
```

### Benötigte Pakete für LSPs

#### Vue

```
npm install -D typescript @vue/language-server
```

## 2. Shortcuts:
`<leader>pf` Dateibrowser\
`CTRL-c` ESCAPE 

#### Auswahl bewegen
`J` Nach unten \
`K` Nach oben 

#### Halbe Seite auf einmal scrollen
`CTRL-d` Nach unten\
`CTRL-u` Nach oben

#### Quickfixes
`<leader>xq` Quickfixes anzeigen\
`<leader>xw` Alle Quickfixes in Datei anzeigen

#### Telescope
`<leader>ff` Dateien in workDir finden\
`<leader>fg` Dateien in git Projekt finden\
`<leader>fs` String in workDir finden

#### Fenstermanagement
`<leader>sv` Fenster vertikal teilen\
`<leader>sh` Fenster horizontal teilen\
`<leader>se` Fenster gleich groß machen\
`<leader>wj` Zum unteren Fenster wechseln\
`<leader>wk` Zum oberen Fenster wechseln\
`<leader>wh` Zum linken Fenster wechseln\
`<leader>wl` Zum rechten Fenster wechseln

#### LSP
`<leader>gu` Usages von Funktion finden\
`<leader>gD` Zur Definition gehen (VIM)\
`<leader>gd` Zur Definition gehen (LSP)\
`<leader>gi` Zur Implementierung gehen\
`<leader>gt` Zur Typ-Definition gehen\
`<leader>ca` Code Aktionen zeigen\
`<leader>rn` Variable umbenennen\
`<leader>d` Diagnostics für Zeile anzeigen\
`<leader>D` Diagnostics für Datei anzeigen\
`<leader>k` Dokumentation anzeigen

#### Undotree
`<leader>u` Undotree öffnen

#### Dateibrowser
`<leader>b` Dateibrowser öffnen

#### Terminal
`<leader>tb` Terminal in unterer Leiste öffnen\
`<leader>tf` Terminal in Popup-Fenster öffnen\
`<leader>tc` Alle geöffneten Terminals schließen

