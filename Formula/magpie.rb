class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4799/magpie-cli-darwin-arm64"
      sha256 "61c834625945f59a5c8c419925e3e0d58f4527329064aa335be8984ccecca657"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4799/magpie-cli-darwin-amd64"
      sha256 "ed6c4647dbbcfde9a05bd0e47cea100a27884023d5bee9fe393f8e25c5111c69"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4799/magpie-cli-linux-arm64"
      sha256 "78b718b72f0377daf56838fdca07031eb1abc0fc4df3529e19913343a3c57d2b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4799/magpie-cli-linux-amd64"
      sha256 "c55ef2c3daa25919e1e45508afab4be8de56f7603847b705a7c4c8357a6d4be4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
