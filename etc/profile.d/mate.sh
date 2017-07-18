if [ "x$DESKTOP_SESSION" == "xmate" ] || [ "x$XDG_SESSION_DESKTOP" == "xmate" ]; then
    # Ensure GTK accessibility modules are active.
    if [ -z "$GTK_MODULES" ]; then
        GTK_MODULES=gail:atk-bridge:canberra-gtk-module
    else
        GTK_MODULES="$GTK_MODULES:gail:atk-bridge:canberra-gtk-module"
    fi
    export GTK_MODULES

    # Disable GTK3 overlay scrollbars
    export GTK_OVERLAY_SCROLLING=0

    # For experimental HiDPI scaling change to:
    #   GDK_SCALE=2
    #   GDK_DPI_SCALE=0.5
    # Requires a reboot.
    export GDK_SCALE=1
    export GDK_DPI_SCALE=1

    # Qt apps will use GTK styling
    export QT_QPA_PLATFORMTHEME=gtk2

    # Qt automatic scaling, based on the pixel density of the monitor.
    export QT_AUTO_SCREEN_SCALE_FACTOR=1
fi
