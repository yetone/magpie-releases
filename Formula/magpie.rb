class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4744/magpie-cli-darwin-arm64"
      sha256 "9a49a05f026cb6c14733499a8c0342e60006685ff551e1ec4acc3a935e30841a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4744/magpie-cli-darwin-amd64"
      sha256 "ae2f88648b109498c2e23117b8d187259fedd41f9c2adbc472429aa5f50a644f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4744/magpie-cli-linux-arm64"
      sha256 "9594c6e888708ba5e69d75d53b57fc4d8aa8650843990ebd0806031532aa0fed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4744/magpie-cli-linux-amd64"
      sha256 "6b720a5c43fba9d607a7884fe6381a297cd61a0fadb9a53edc91e95e3872d6a1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
