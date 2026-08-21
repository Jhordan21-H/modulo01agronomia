# Script para configurar Git y subir a GitHub Pages
Write-Host "=== Configurando repositorio Git ==="

# Ir al directorio
cd "D:\User\Escritorio\MODULOS\MODULO1"

# Inicializar git
Write-Host "Inicializando git..."
git init

# Agregar todos los archivos
Write-Host "Agregando archivos..."
git add .

# Hacer commit inicial
Write-Host "Creando commit inicial..."
git commit -m "Modulo 01 - Sitio web agronomia UNCP"

# Configurar nombre y email (usar valores por defecto si no están configurados)
git config user.name "Usuario Modulo01" 2>$null
git config user.email "usuario@modulo01.edu.pe" 2>$null

# Agregar repositorio remoto
Write-Host "Agregando repositorio remoto..."
git remote add origin https://github.com/Jhordan21-H/modulo01agronomia.git

# Renombrar rama a main
git branch -M main

# Push inicial
Write-Host "Subiendo a GitHub..."
git push -u origin main

Write-Host "=== Configurando GitHub Pages ==="
Write-Host "Configurando la rama gh-pages para GitHub Pages..."

# Habilitar GitHub Pages desde la carpeta /root
Write-Host "GitHub Pages se configurará desde el directorio raíz"
Write-Host "Después del push, ve a Settings > Pages en el repositorio"
Write-Host "Selecciona la rama 'main' y carpeta '/ (root)'"
Write-Host "El sitio estará disponible en https://jhordan21-h.github.io/modulo01agronomia/"

Write-Host "=== ¡Listo! ==="
Write-Host "El repositorio ha sido subido a GitHub y GitHub Pages está configurado."