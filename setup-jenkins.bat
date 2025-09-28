@echo off
SETLOCAL

echo ================================
echo 🚀 Configurando Jenkins con Docker (modo root)
echo ================================

REM Crear volumen para persistencia
docker volume create jenkins-data

REM Crear red solo si no existe
docker network inspect jenkins-network >nul 2>&1
IF %ERRORLEVEL% NEQ 0 (
    docker network create jenkins-network
)

REM Crear Dockerfile limpio
(
echo FROM jenkins/jenkins:lts
echo.
echo USER root
echo.
echo RUN apt-get update ^&^& apt-get install -y ^
    docker.io ^
    curl ^
    git ^&^& rm -rf /var/lib/apt/lists/*
echo.
echo RUN curl -SL https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose ^&^& chmod +x /usr/local/bin/docker-compose
echo.
REM NOTA: dejamos a Jenkins ejecutando como root
) > Dockerfile

REM Construir imagen personalizada
docker build -t jenkins-docker .

REM Levantar Jenkins con puertos diferentes (9090 y 50001)
docker run -d ^
  --name jenkins ^
  --restart unless-stopped ^
  -p 9090:8080 -p 50001:50000 ^
  -v jenkins-data:/var/jenkins_home ^
  -v //var/run/docker.sock:/var/run/docker.sock ^
  --network jenkins-network ^
  jenkins-docker

echo ================================
echo ✅ Jenkins levantado en http://localhost:9090
echo Usuario inicial: revisa el log con:
echo    docker logs jenkins
echo ================================
echo Puerto 8080 queda libre para el frontend
echo ================================
pause
ENDLOCAL