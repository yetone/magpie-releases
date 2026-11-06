class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3158/magpie-cli-darwin-arm64"
      sha256 "109088ea2423ae2ffdfcd7b13abb7d25a49d4615a18db7e97f27574032847036"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3158/magpie-cli-darwin-amd64"
      sha256 "762f6d74d67ae90bb2634c23ba79927f6c84f0d46a82a866e51f4efa1f218f54"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3158/magpie-cli-linux-arm64"
      sha256 "9f187d2ad2fc101d29c3956f486bed231bd5cf0a73f780e13bda36bf1155cfdd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3158/magpie-cli-linux-amd64"
      sha256 "f2f20f768423378c7d450e051882734cd233859b00afed2962ec3feb4741729e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
