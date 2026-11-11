class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3665/magpie-cli-darwin-arm64"
      sha256 "d0513c91d536ddd53bbdf1f5b711e9eb667e415b8ec6d35ee59cfbcc3b22c938"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3665/magpie-cli-darwin-amd64"
      sha256 "7da09756c01c563c105ebe20c044754fd4a9fbf5723e599e6e56e29a042c02cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3665/magpie-cli-linux-arm64"
      sha256 "1104a9545cb10e4507ee00ceb43f8f706ad37f6ed43fde7fc880b3b12e3c4988"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3665/magpie-cli-linux-amd64"
      sha256 "8525f28537c21d7d0ce88300a30ed9ca42339955002733785b0a71ab7379e73e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
