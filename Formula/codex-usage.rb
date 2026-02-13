class CodexUsage < Formula
  desc "CLI tool to track OpenAI Codex usage with multi-account support"
  homepage "https://github.com/Liam-Deacon/codex-usage"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-aarch64-apple-darwin"
      sha256 "TODO"
    else
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-x86_64-apple-darwin"
      sha256 "4ea084d104c216ab8d504ebf6b4ba753b2089d4fd30875d17fbf2d291021176e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-aarch64-unknown-linux-gnu"
      sha256 "TODO"
    else
      url "https://github.com/Liam-Deacon/codex-usage/releases/download/v0.1.0/codex-usage-x86_64-unknown-linux-gnu"
      sha256 "3e9d341026703fe611e874af1396bc8d98e76bdf7b3b0624108e94b4cffae36c"
    end
  end

  def install
    bin.install "codex-usage"
  end

  test do
    system "#{bin}/codex-usage", "--version"
  end
end
