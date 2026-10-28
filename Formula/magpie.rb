class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1893/magpie-cli-darwin-arm64"
      sha256 "8e7ff9b9c90451a6739b2a3bd3ff9a2a0c349cff29e28d64082ba5c2f5b14c62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1893/magpie-cli-darwin-amd64"
      sha256 "011f4e48e8d5bf4d7ecf91c0a244943ba15f3764abeca5bc6395bba708a59fb2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1893/magpie-cli-linux-arm64"
      sha256 "9fcf26414abd1046dd868ad8cacde1f4c70209854e376a3316965a74b85ba800"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1893/magpie-cli-linux-amd64"
      sha256 "576c839fa0de0c6b827e4a9881b03b61841e729ee84e4ac27f787d85cd3f58a9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
