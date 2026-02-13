class CodexUsage < Formula
  desc "CLI tool to track OpenAI Codex usage with multi-account support"
  homepage "https://github.com/Liam-Deacon/codex-usage"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-aarch64-apple-darwin.tar.gz"
      sha256 "TODO"
    else
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-x86_64-apple-darwin.tar.gz"
      sha256 "TODO"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "TODO"
    else
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "TODO"
    end
  end

  def install
    bin.install "codex-usage"
  end

  test do
    system "#{bin}/codex-usage", "--version"
  end
end
