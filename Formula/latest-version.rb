class LatestVersion < Formula
  desc "Find the latest version of commands across all available paths"
  homepage "https://github.com/Liam-Deacon/latest-version"
  url "https://github.com/Liam-Deacon/latest-version/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "TODO: Add SHA256 hash of the release tarball"
  license "MIT"

  head "https://github.com/Liam-Deacon/latest-version.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/latest-version", "--help"
  end
end