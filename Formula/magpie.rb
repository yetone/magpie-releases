class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3118/magpie-cli-darwin-arm64"
      sha256 "1a22e397ea7b74fd74ff7da33debf98d23872252fa632117eb22112d4cb4f0c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3118/magpie-cli-darwin-amd64"
      sha256 "b895124f419a3bb7b791ad17a3da10a8c8cf2d77058e71802b263ea80fb6e68a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3118/magpie-cli-linux-arm64"
      sha256 "6bc33dbefa33858d7dfa4044e3c8fdf10cef0c07185e1d5c0ed8f67454aed64e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3118/magpie-cli-linux-amd64"
      sha256 "9c75363d8e4139d0830c1bad486b65fbfe618602fafa6b6b962bf56811ff4ad9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
