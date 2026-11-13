class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4064/magpie-cli-darwin-arm64"
      sha256 "939134fa0629beed378e7f6db9db5cf36cfc71fccf4b6aec91069f96ea5e7ebe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4064/magpie-cli-darwin-amd64"
      sha256 "9f611fe9d7d498be78d69f30fba501f0ad9025d20064bc098f18683b7594cc6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4064/magpie-cli-linux-arm64"
      sha256 "ae7cc0af095a0fefec4121917f5c7dcb233e9e1677cfd51d8433769fa81135be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4064/magpie-cli-linux-amd64"
      sha256 "64b63927e9e133a853425d212f2ea4d9d09be6bf7ebb5925a8179abb9faf248b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
