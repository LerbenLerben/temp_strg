@echo off

REM Удаляем папку build, если она существует
if exist build (
    echo Удаление папки build...
    rmdir /s /q build
)

REM Создаем папку build и переходим в неё
echo Создание папки build...
mkdir build
cd build

REM Запуск cmake с указанием toolchain файла и генератора Ninja
echo Запуск cmake...
cmake -DCMAKE_TOOLCHAIN_FILE="../toolchain.cmake" -G "Ninja" ..

REM Запуск Ninja для сборки проекта
echo Запуск Ninja...
ninja

REM Возврат в начальную папку
cd ..

echo Готово!
pause
