class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2860/magpie-cli-darwin-arm64"
      sha256 "ad927e7eb92623b53e43223d96fa90100debe0e35d267ad09f1dc8f9667e9014"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2860/magpie-cli-darwin-amd64"
      sha256 "dd94d0e37a4ea41b1b19039d7b118cb6c147649ae5d84932fe76a53fee97b10a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2860/magpie-cli-linux-arm64"
      sha256 "b5fc4c7a5f8c0848d8f4f86289e013fa0e4dc5a92ef09d8e4a09257f5828e6b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2860/magpie-cli-linux-amd64"
      sha256 "7a57c4cb9e8be8b66c3e961e1ee20ae081fe6d7b09277d5a9eb25a67451e736a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
