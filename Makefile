.PHONY:
wasm:
	cargo build --release --target wasm32-unknown-emscripten -Z build-std=panic_abort,std
	cp target/wasm32-unknown-emscripten/release/aussie_plus_plus.js site/public/aussie_plus_plus.js
	cp target/wasm32-unknown-emscripten/release/aussie_plus_plus.wasm site/public/aussie_plus_plus.wasm