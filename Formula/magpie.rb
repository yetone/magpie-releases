class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2641/magpie-cli-darwin-arm64"
      sha256 "5857ba2301974bee0c588342b67183510af6e2854f90e89724d4361e5b6021ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2641/magpie-cli-darwin-amd64"
      sha256 "85077fa050dd2d6f1ef461172d4328fad8ff6a496ab328f89024ea08d7d15cc5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2641/magpie-cli-linux-arm64"
      sha256 "fec6a26262f05f2dfb8c0c009fd7e00f06e41714f24bf1baf36ce7f6faac1f3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2641/magpie-cli-linux-amd64"
      sha256 "d64601b86d054b5575ec33f7da3d25aadec1b5ed0e01dbc54d4a69bcf91cf546"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
