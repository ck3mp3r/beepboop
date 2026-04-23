class Beepboop < Formula
  desc "beepboop - A test harness framework for orchestrating and validating complex system behavior"
  homepage "https://github.com/ck3mp3r/beepboop"
  version "0.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/ck3mp3r/beepboop/releases/download/v0.0.0/beepboop-0.0.0-aarch64-darwin.tgz"
      sha256 ""
    else
      odie "Intel Macs are no longer supported. Please use an Apple Silicon Mac."
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ck3mp3r/beepboop/releases/download/v0.0.0/beepboop-0.0.0-x86_64-linux.tgz"
      sha256 ""
    elsif Hardware::CPU.arm?
      url "https://github.com/ck3mp3r/beepboop/releases/download/v0.0.0/beepboop-0.0.0-aarch64-linux.tgz"
      sha256 ""
    end
  end

  def install
    bin.install "beepboop"
  end
end
