class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4389/magpie-cli-darwin-arm64"
      sha256 "099d95d11c6a00c7217dfa13b5f03ae27b81a6b7259e840881f1a6043d66fe43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4389/magpie-cli-darwin-amd64"
      sha256 "a0475eb128bb7b06afb8268b2ce6ba604e23cf23cd1d2fd33b786b29f0d15362"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4389/magpie-cli-linux-arm64"
      sha256 "4185e70dcc6c63f699dcb3c031eab4d3dd7b3ed65d4b37b23a7ff2cfa0ad5341"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4389/magpie-cli-linux-amd64"
      sha256 "867efdd151f54fc830ddf5132e7a4278d8c4296e40a08a232eb555b9f854801d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
