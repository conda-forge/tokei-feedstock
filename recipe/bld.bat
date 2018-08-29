cargo build --features all --release
cargo install --features all --root "%PREFIX%"
IF %ERRORLEVEL% NEQ 0 exit 1
