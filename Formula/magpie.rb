class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1070/magpie-cli-darwin-arm64"
      sha256 "1e228949b72e930df2e065d31c6b3e5c8dfa9379d2752d8de02bcd7f1f2ec176"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1070/magpie-cli-darwin-amd64"
      sha256 "4cfbd8d34479f39ad392f361755bb5d2542d8d7417e1cbda841c061883a5de2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1070/magpie-cli-linux-arm64"
      sha256 "2865425030e58a6f7636793bbc6153b025cbd5ae2edfabd64c35f6ccce275d4b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1070/magpie-cli-linux-amd64"
      sha256 "a6bee126878632078352845fcc7c8fa217f1aae02bac831ad8924fc17fc796c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
