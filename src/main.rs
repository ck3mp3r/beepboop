use anyhow::Result;
use beepboop::cli::{Cli, Commands};
use clap::Parser;

#[tokio::main]
async fn main() -> Result<()> {
    let cli = Cli::parse();

    match cli.command {
        Some(Commands::Tui) => {
            println!("TUI mode - not yet implemented");
        }
        None => {
            println!("beepboop - test harness framework");
            println!("Use --help for usage information");
        }
    }

    Ok(())
}
