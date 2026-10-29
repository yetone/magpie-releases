class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2099/magpie-cli-darwin-arm64"
      sha256 "ea85af48f438267068a230ba8e2911a45ce191e400158a1ab0fd9035e2d82dfd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2099/magpie-cli-darwin-amd64"
      sha256 "d4553c31a7cce87bce788c823c9b13a669d4517a00e8964e2490f76c1d7f8df2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2099/magpie-cli-linux-arm64"
      sha256 "7a6a58d3a71bf2e1a1643fd7d939d5189d296a7d6ce3a2792bf1f7c724c20c0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2099/magpie-cli-linux-amd64"
      sha256 "23a10a085dab0d72a71424fcb3e3548552036c4f964f91ba43b0e0b28bb3c67d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
