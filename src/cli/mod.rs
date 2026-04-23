use clap::Parser;

#[derive(Parser, Debug)]
#[command(name = "beepboop")]
#[command(
    author,
    version,
    about = "A test harness framework for orchestrating and validating complex system behavior"
)]
pub struct Cli {
    /// Command to run
    #[command(subcommand)]
    pub command: Option<Commands>,
}

#[derive(Parser, Debug)]
pub enum Commands {
    /// Run the TUI interface
    Tui,
}
