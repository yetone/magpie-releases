class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4172/magpie-cli-darwin-arm64"
      sha256 "1721be5a48cba829e373961c15dedc38437c0de7db490b37a42d16d67cc70313"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4172/magpie-cli-darwin-amd64"
      sha256 "1fa150c85f62b20682b6d3dee7d08535b1e7dab0f03790b31d6ae67598b7f571"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4172/magpie-cli-linux-arm64"
      sha256 "928a058ee40b6227d329fe13af01e2caa02613730e6a5613f29d6c1b20aa0410"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4172/magpie-cli-linux-amd64"
      sha256 "695230654bbc5afe4b2a6c5f2c3bf03d3c3e01bbe6b973c48032ea83cf004bfb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
