class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2696/magpie-cli-darwin-arm64"
      sha256 "ee7d5438578299e0fe092ebd1ab07f8da2f5585846a3188b12b60d361d50a153"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2696/magpie-cli-darwin-amd64"
      sha256 "a45ae1e6f2ec843ac5eabbd48eccebdff8d949cdfcf0a69639a0aac47c74d1b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2696/magpie-cli-linux-arm64"
      sha256 "7b14627e557013f2d740d2e451a038f83d765c5c1793c2249b2b1aaaba91a2de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2696/magpie-cli-linux-amd64"
      sha256 "1279bcd8c339e6e7d65b932790d36c1fe75d20b7d8709c1d6ad8f88d39f595d2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
