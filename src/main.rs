extern crate clap;

#[macro_use]
extern crate shell;

use clap::{load_yaml, App};

mod command;

fn main() {
    let yaml = load_yaml!("cli.yml");
    let matches = App::from_yaml(yaml).get_matches();

    if matches.is_present("install") {
        command::install(matches.is_present("verbose"));
    }
}
