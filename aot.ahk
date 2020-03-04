make_menu() {
    Menu, TRAY, NoStandard
    Menu, TRAY, add, AlwaysOnTop by @JaviertINC, about_handler
    Menu, TRAY, add,
    Menu, TRAY, add, Ayuda, help_handler
    Menu, TRAY, add,
    Menu, TRAY, add, Salir, exit_handler
}

make_menu()
^SPACE::  Winset, Alwaysontop, , A

about_handler:
aboutmsg = 
(
Desarrollado por @JaviertINC
Creado con fines educativos.
Licencia de libre Uso.
[Version 1.2]
)
MsgBox, 64, Info, %aboutmsg%
return


help_handler:
helpmsg = 
(
Para mantener una ventana siempre a la vista,
presiona las teclas [CTRL] + [ESPACIO] en la ventana que quieras.
Para que la aplicacion deje de captar la combinacion de teclas, solo cierralo.
)
MsgBox, 32, Ayuda, %helpmsg%
return

exit_handler:
ExitApp
return
