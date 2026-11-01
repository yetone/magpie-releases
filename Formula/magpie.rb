class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2655/magpie-cli-darwin-arm64"
      sha256 "7fc8e504bf5d33d13a94836a5b670be5f188f81d8faba9e75e685f6eede49ca5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2655/magpie-cli-darwin-amd64"
      sha256 "0dd44c3be0cfc631264756c3adcbb3230f434d1f040be9b33a51eec342e60abf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2655/magpie-cli-linux-arm64"
      sha256 "ec1fdd7ec83b7ebbf934e245a6ade5d0e5e3ca39803773fa4e680b2c2f1f4110"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2655/magpie-cli-linux-amd64"
      sha256 "8a7e7e30cf75cb074ee3130624cbdb81fb6cdf4545bf67fc047cbc0a171e74ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
