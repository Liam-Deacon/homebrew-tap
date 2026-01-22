class TelegramCli < Formula
  desc "Command-line Telegram client"
  homepage "https://github.com/Liam-Deacon/tg"
  version "1.3.1-ld9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Liam-Deacon/tg/releases/download/v1.3.1-ld9/telegram-cli-macos-arm64.tar.gz"
      sha256 "b797f8a8495faa03057d83c5f9a888740d22e8ebaad6df07f9dd2ce5cd83dc66"
    else
      url "https://github.com/Liam-Deacon/tg/releases/download/v1.3.1-ld9/telegram-cli-macos-x86_64.tar.gz"
      sha256 "33e8853d7708477ef8adb2130013173d0bc2a9f99a826a2dff2b81f8d1dafe81"
    end
  end

  on_linux do
    url "https://github.com/Liam-Deacon/tg/releases/download/v1.3.1-ld9/telegram-cli-linux-x86_64.tar.gz"
    sha256 "ed1413e419e49158fff0d6cff13eab18cc790684a929b2f46a917e097f826a98"
  end

  depends_on "libconfig"
  depends_on "libevent"
  depends_on "jansson"
  depends_on "lua"
  depends_on "openssl@3"
  depends_on "readline"

  def install
    bin.install "telegram-cli"
  end

  test do
    system "#{bin}/telegram-cli", "-h"
  end
end
