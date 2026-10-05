class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.941/magpie-cli-darwin-arm64"
      sha256 "940c938ca3b6ff74fc8e55d2432d8bfeae620739c7bdf01c75c5dc164f947217"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.941/magpie-cli-darwin-amd64"
      sha256 "ee7741a873a5361386b0aaa504733837f68d08dbef3ef949f8a21cc071291922"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.941/magpie-cli-linux-arm64"
      sha256 "c99827b2c22102b244a5a626ad0bb9e7d6c18f7a7362674cc3c590766e3eae88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.941/magpie-cli-linux-amd64"
      sha256 "737e9cba04edc4c0b7262895709e33438e468d1b8accb850140cb748e97e6cdc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
