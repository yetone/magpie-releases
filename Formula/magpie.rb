class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1933/magpie-cli-darwin-arm64"
      sha256 "f2c67a9944cf5f8b181b3dfa9ee43c76c8c71e2c77b030031585e62dca543e03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1933/magpie-cli-darwin-amd64"
      sha256 "c961423b833b3ce9c0a6e3c85952357bf8ce0b85e8ba85599caf86281e486ca1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1933/magpie-cli-linux-arm64"
      sha256 "fa25febe3bfecfb263598ebfbb92164cb4b7b5c49c4480ff22d991548064a7a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1933/magpie-cli-linux-amd64"
      sha256 "60eeaf7b6e71dff5839529831aca47c5d0fa180fe6cacd21befefc4acdf79037"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
