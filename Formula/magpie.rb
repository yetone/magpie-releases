class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3242/magpie-cli-darwin-arm64"
      sha256 "74b3e9c4e228bd95bb49793b75388d4731326510796709ecf9014a1883159c38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3242/magpie-cli-darwin-amd64"
      sha256 "a44c92eb54a74fa66d73724b32907e7d235dad68e498e44861ee34280298e6af"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3242/magpie-cli-linux-arm64"
      sha256 "c92584bb1400d4e0cf595e55182939dce809e241c1b719e0d69f1c4d45399103"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3242/magpie-cli-linux-amd64"
      sha256 "300c7931570e9731ca88a2c48fbfdfd6c6c6186fac1ec7ce29708ab0ad09c068"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
