class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2238/magpie-cli-darwin-arm64"
      sha256 "8d59d00f9b1f26e4c1fe02015226db170884e8e9735469a23d494a230706c662"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2238/magpie-cli-darwin-amd64"
      sha256 "9bcbef66490f7f19df09d06abe171db743ca00b0b893b4b90103230234f96d42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2238/magpie-cli-linux-arm64"
      sha256 "e8155d65971ea3297f6afabaeb5b9a765420a95062d9424ecc782f2e2e6c8e5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2238/magpie-cli-linux-amd64"
      sha256 "68d3b77ebeaea5cea9066cd8db55ea01acf7755ac160e4cef08ed8acf3956136"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
