class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2184/magpie-cli-darwin-arm64"
      sha256 "35e24097ce5fadde4d989b7673f4830dd5e8f8435146711f866363aed6ad9c69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2184/magpie-cli-darwin-amd64"
      sha256 "e7b55b7d2fe3519d4fdb7514742c10e48e68c5c13781c675088c8dc9fcb57e14"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2184/magpie-cli-linux-arm64"
      sha256 "1cc06599066608377aa7b60a800267011c26df2eec2ce2e0c831880704046bed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2184/magpie-cli-linux-amd64"
      sha256 "34b6dac41eddd7b41ba0759a2344bea8ac384e12f93fb4b802c60dc9fc10b5e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
