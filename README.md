A script to build various cargo commands.  You will also need to add the `./bin/` path into your $PATH in order to use these.  If you don't know how to do that, then how to do it is add ```PATH="$PATH:/path/to/clone/bin/"``` to ~/.bashrc.  Alternatively, you could drop them into ```/usr/local/bin/``` instead if you would prefer it be a global install rather than just for a specific user.

As of the first commit, all these came from https://github.com/kud1ing/awesome-rust

Running `./script.sh` will get you
* [cargo-check](https://github.com/rsolomo/cargo-check)
* [cargo-count](https://github.com/kbknapp/cargo-count)
* [cargo-do](https://github.com/pwoolcoc/cargo-do)
* [cargo-dot](https://github.com/maxsnew/cargo-dot)
* [cargo-edit](https://github.com/killercup/cargo-edit)
* [cargo-fmt](https://github.com/pwoolcoc/cargo-fmt)
* [cargo-outdated](https://github.com/kbknapp/cargo-outdated)
* [cargo-watch](https://github.com/passcod/cargo-watch)

Running `./script.sh -y` will compile the above *along with* ones that need a nightly compiler, which is currently just
* [cargo-script](https://github.com/DanielKeep/cargo-script)

