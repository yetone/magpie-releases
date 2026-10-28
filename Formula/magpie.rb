class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1961/magpie-cli-darwin-arm64"
      sha256 "48c4db3e49d8a63704ab8f8b940fdca9eb750b9cc9c20ee8c11ee0420dd40707"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1961/magpie-cli-darwin-amd64"
      sha256 "2b1337727e1eced88edda0b936ad0f5a3b609ee2fdd86bc35f8335ac4ea4aa4d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1961/magpie-cli-linux-arm64"
      sha256 "d55fe1ad3323c7219550d9e13257cc11bcc978dd04ad725d16afb7ac78f13a39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1961/magpie-cli-linux-amd64"
      sha256 "33af3827bfe850f55e4f42c4e31c5ed738eb4482764a7548ecbca9648b5f0ccf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
