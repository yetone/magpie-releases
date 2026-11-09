class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3412/magpie-cli-darwin-arm64"
      sha256 "20214e2b9d092c8807eacc6751ae1bd673c01f03b508cca28b15e97a2766bb32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3412/magpie-cli-darwin-amd64"
      sha256 "f12c71e4849b919e9a1866990bff2249a3810649c65b8fd18df70811e01c4b2e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3412/magpie-cli-linux-arm64"
      sha256 "ad2fda0bab9c6df4ee7e2f6c8fe33cc5be3e49723981ba176ac444941617f72e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3412/magpie-cli-linux-amd64"
      sha256 "ccc7bea54f4e8426ea6fb4215f6c2e0b46e1f989af4318fd378b2d497e8ac201"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
