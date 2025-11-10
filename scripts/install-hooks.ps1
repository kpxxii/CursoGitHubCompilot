# Instalador simple de hooks para Windows (PowerShell)
# Ejecutar desde la raíz del repositorio: PowerShell -ExecutionPolicy Bypass -File .\scripts\install-hooks.ps1

$source = ".githooks/commit-msg"
$dest = ".git/hooks/commit-msg"

if (-not (Test-Path ".git")) {
    Write-Error "No se detecta un repositorio git en esta carpeta. Asegúrate de ejecutar desde la raíz del repo."
    exit 1
}

try {
    Copy-Item -Path $source -Destination $dest -Force
    # En entornos Git for Windows, el hook debe tener permiso de ejecución; intentar establecerlo (no siempre aplicable en Windows)
    try {
        icacls $dest /grant Everyone:RX | Out-Null
    } catch {
        # Ignorar si falla
    }
    Write-Host "Hook instalado en $dest. Ahora los mensajes de commit serán validados (política: mensajes en español)."
    Write-Host "Para desinstalar, borra el archivo: rm $dest"
    exit 0
} catch {
    Write-Error "Error al copiar el hook: $_"
    exit 1
}
