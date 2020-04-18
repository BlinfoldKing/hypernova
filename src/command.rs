use std::process::Command;

pub fn install(verbose: bool) -> Result<(), String> {
    // cmd!("sudo apt-get install neovim").run().unwrap();
    // cmd!("pip3 install --user pynvim").run().unwrap();
    // cmd!("mkdir -p $HOME/.config/nvim").run().unwrap();
    // cmd!("echo $HOME").run().unwrap();
    let output = Command::new("sudo")
        .args(&["apt-get", "install", "neovim"])
        .output()
        .expect("failed to execute process");

    if verbose {
        let output = String::from_utf8(output.stdout).unwrap();
        println!("{}", output);
    }
    Ok(())
}
