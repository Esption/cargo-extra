BASE_PATH=$PWD
BIN_PATH="$PWD/bin"

flag_nightly=false;

if [ "$1" == "-y" ]; then
	flag_nightly=true;
fi

update() {
	if [ ! -d "$BASE_PATH/$2" ]; then
		git clone --recursive $1
	fi
	cd "$BASE_PATH/$2"
	git pull --recurse-submodules
	cargo update
	cargo build --release
	cp "$BASE_PATH/$2/target/release/$2" "$BIN_PATH"
	cd "$BASE_PATH"
}

if [ ! -d "$BIN_PATH" ]; then
	mkdir $BIN_PATH
fi

update "https://github.com/rsolomo/cargo-check.git" "cargo-check"
update "https://github.com/kbknapp/cargo-count.git" "cargo-count"
update "https://github.com/pwoolcoc/cargo-do.git" "cargo-do"
update "https://github.com/maxsnew/cargo-dot.git" "cargo-dot"
update "https://github.com/killercup/cargo-edit.git" "cargo-edit"
update "https://github.com/kbknapp/cargo-outdated.git" "cargo-outdated"
update "https://github.com/passcod/cargo-watch.git" "cargo-watch"

# Those in this if statement *need* a nightly build
if [ flag_nightly ]; then
	update "https://github.com/DanielKeep/cargo-script.git" "cargo-script"
fi

