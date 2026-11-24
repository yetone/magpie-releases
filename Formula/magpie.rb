class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4736/magpie-cli-darwin-arm64"
      sha256 "c16f2c280cba7e5d919ff52e14fc9ed16092341a6fde2b1d47a5adcf70cc9751"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4736/magpie-cli-darwin-amd64"
      sha256 "a4bc8883a756d2e19a6b939af879040fc1f100844f15345d95c94f068e2abf03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4736/magpie-cli-linux-arm64"
      sha256 "ce70717b2ee3149d092a19dd63e215eb7a8e417ed5bd9297b948090b108850f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4736/magpie-cli-linux-amd64"
      sha256 "f335f71c69b281d49ba0e390762c0c17ef00c7c97822b8daa7323a96d8652266"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
