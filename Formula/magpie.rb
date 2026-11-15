class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4226/magpie-cli-darwin-arm64"
      sha256 "8c6a7e05292af5e41a68702e0979b9c34d25c7a9031765dd0886a8c6b8552c78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4226/magpie-cli-darwin-amd64"
      sha256 "9e70957daa7bea9a8400f664c176c034b2a9d2b628452081128c6464fb294632"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4226/magpie-cli-linux-arm64"
      sha256 "550b52b334443d088cfef79ccd2d75def1609708f242397a80ece79f1b0e7c44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4226/magpie-cli-linux-amd64"
      sha256 "2af4fbc504fb071c80b9184f6b74da0ab757b5cf5ab50299fcbc26006fd2314f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
