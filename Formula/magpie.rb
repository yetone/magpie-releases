class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3112/magpie-cli-darwin-arm64"
      sha256 "10ad567503d930171db1afed67426443e7624471824317fe809f5ceb2aa1cbd8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3112/magpie-cli-darwin-amd64"
      sha256 "b4558d5383817b2d85a25a63eaaa6c85a5d05778c360e19500a64f0aaf0c2d5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3112/magpie-cli-linux-arm64"
      sha256 "79502eb144b2b32f763fad3744bb00ddc4eb6c681125c8ac6837113beee3f45b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3112/magpie-cli-linux-amd64"
      sha256 "95b5f300e208b11f79ef07e9ea1d47e11d7424768a7f290722b10387870e5dca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
