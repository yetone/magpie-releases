class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2047/magpie-cli-darwin-arm64"
      sha256 "27048f3f4b94a2226fa5e3c0bbd69420a3620c06b3e58f8becfd86bdeb8fc26a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2047/magpie-cli-darwin-amd64"
      sha256 "7af6c119ea7ba417ad113030a1366e062fea0e34639c5745991ddf8206153c4a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2047/magpie-cli-linux-arm64"
      sha256 "27384c9e6255e8e9199773657a577d311849ae03f6e248bb9e5dc7aebe787805"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2047/magpie-cli-linux-amd64"
      sha256 "183a236695cb6ba3952e96541f58087e3cfef9edb293c817e94a6321d5b8a9ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
