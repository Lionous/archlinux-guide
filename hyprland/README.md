# Configuraciones adicionales

# ✅ Instalar dependencias
```bash
sudo pacman -S wofi
```

- swaylock
```bash
sudo pacman -S swaylock
```

> [!note]
> Si no funciona correctamente puede que falte alguna dependencias... instalar con **paru** o **yay**
```bash
paru -S swaylock-effects
```


# ✅ Instalar fuentes emoji en Arch Linux
```bash
sudo pacman -S ttf-apple-emoji
sudo pacman -S noto-fonts noto-fonts-emoji ttf-joypixels ttf-twemoji
sudo pacman -S ttf-nerd-fonts-symbols
```

# ✅ Themes
## En Arch Linux o derivados (Hyprland suele usarse con Arch)
```bash
sudo pacman -S nwg-look
sudo pacman -S qt5ct qt6ct
```
## Para Qt5 y Qt6
```bash
export QT_QPA_PLATFORMTHEME=qt5ct
export QT_QPA_PLATFORMTHEME=qt6ct
```
```bash
nwg-look
```

# ✅ Notificador
## 	Ligero, Wayland-native
```bash
sudo pacman -S mako
```


# ✅ Arranque automatico con SDDM

## 1. Instalar SDDM
```bash
sudo pacman -S sddm
```
## 2. Habilitar el servicio para que se inicie al arrancar
```bash
sudo systemctl enable sddm
sudo systemctl start sddm
```
## 3. Crear la sesión para Hyprland
```bash
sudo nano /usr/share/wayland-sessions/hyprland.desktop
```
```bash
[Desktop Entry]
Name=Hyprland
Comment=An intelligent dynamic tiling Wayland compositor
Exec=Hyprland
Type=Application
```
## 4. Habilitar autologin (para entrar directo a tu sesión sin elegir usuario)
```bash
sudo nano /etc/sddm.conf
```
```bash
[Autologin]
User=TU_USUARIO
Session=hyprland.desktop
```

## Reinicia
```bash
reboot
```

### Themes SDDM
1. sddm-theme-chili
2. sddm-theme-corners
3. sddm-theme-astronaut
4. sddm-sugar-candy-git

> [!note]
> puedes verlo cada uno en su respectivo repositorio ejemplo: [Themes](https://github.com/catppuccin/sddm).

# ✅ Micro terminal-based text
```bash
pacman -S micro
```
- Config editor
```bash
micro ~/.config/micro/settings.json
```

- my config
```bash
{
    "keymap.Alt-c": "Clipboard.Copy",
    "keymap.Alt-v": "Clipboard.Paste",
    "keymap.Alt-x": "Clipboard.Cut",

    "colorscheme": "catppuccin-mocha"
}
```
- Themes
Clonar el repositorio:
 https://github.com/catppuccin/micro/tree/main
i
- Configuraciones
  Habilitar soporte para true color (24-bit)
```bash
echo 'export MICRO_TRUECOLOR=1' >> ~/.zshrc
source ~/.zshrc
```



# ✅ Activar Hyprland plugins
> [!note]
> En la página oficial se puede encontrar la documentacion **https://wiki.hypr.land/Plugins/Using-Plugins/**
```zsh
sudo pacman -S cpio
sudo pacman -S cmake
sudo pacman -S git
sudo pacman -S meson
```
