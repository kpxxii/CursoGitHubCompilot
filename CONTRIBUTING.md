# Contribuir al repositorio

Normas mínimas para commits y hooks locales.

## Mensajes de commit en español
Este repositorio solicita que los mensajes de commit estén redactados en español. Cuando realices commits, por favor usa mensajes claros y en español, por ejemplo:

- "Agregar documentación de la landing"
- "Corregir enlace roto en README"
- "Actualizar guía de admisión para 2026"

Motivo: mantener coherencia en el historial y facilitar la lectura para el equipo hispanohablante.

## Hook local (validación automática)
En la carpeta `.githooks` encontrarás un hook `commit-msg` que valida (de forma simple) que el mensaje de commit esté en español. Para instalarlo localmente en Windows, ejecuta desde la raíz del repo:

```powershell
PowerShell -ExecutionPolicy Bypass -File .\scripts\install-hooks.ps1
```

El script copiará el hook a `.git/hooks/commit-msg`. Después de eso, los commits con mensajes que no cumplan la regla serán rechazados localmente.

## Nota sobre el asistente
No es posible modificar permanentemente las instrucciones internas del asistente desde el repositorio. Sin embargo, cuando el asistente haga cambios en el repo en esta sesión, usará mensajes de commit en español. Además, el hook y esta guía ayudan a los colaboradores humanos a cumplir la política localmente.

Si quieres que adapte las reglas del hook (p. ej. palabras clave adicionales o permitir mensajes sin tildes), dime qué añadir y lo actualizo.
