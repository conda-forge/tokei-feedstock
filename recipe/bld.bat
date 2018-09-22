:: build
cargo build   --features all --release         || goto :error
cargo install --features all --root "%PREFIX%" || goto :error

:: strip debug symbols
strip "%PREFIX%\bin\tokei.exe" || goto :error
goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1
