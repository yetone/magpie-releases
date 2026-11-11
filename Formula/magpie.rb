class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3719/magpie-cli-darwin-arm64"
      sha256 "664baa4f1ad15c2ea5cbb6070644e74b494a9a41f4c38b42951cc0aa8c8a33c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3719/magpie-cli-darwin-amd64"
      sha256 "457f2f80ed58a368e327c32d2f80d5424a42f8f3eb8823ca8c7af3d0b68bb4b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3719/magpie-cli-linux-arm64"
      sha256 "fe573f7d916dd38629a00d7e53669cac3675d5c8580cb063bf0f3faf8bb72bfe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3719/magpie-cli-linux-amd64"
      sha256 "b6ff539adc0326b9577609bba4481ab198185a75c124d85c59c9fc056fba7f37"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
