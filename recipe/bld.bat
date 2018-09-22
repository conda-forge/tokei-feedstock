:: build
cargo build   --features all --release         || goto :error
cargo install --features all --root "%PREFIX%" || goto :error

goto :EOF

:error
echo Failed with error #%errorlevel%.
exit 1
