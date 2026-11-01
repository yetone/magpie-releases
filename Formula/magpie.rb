class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2521/magpie-cli-darwin-arm64"
      sha256 "3834f50e209adce3a11c159990684d3d2488efc9cb84eebe62e2a53b1145504d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2521/magpie-cli-darwin-amd64"
      sha256 "126c7b80d19013d7254e9d1691c8863e8dd5239ac519a9ff11a028cd2e46fc6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2521/magpie-cli-linux-arm64"
      sha256 "9d507b1e2d27dcb063c020dc740560dbe4ff840cdfcc993d8ecdedb3130c3e63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2521/magpie-cli-linux-amd64"
      sha256 "c2eca9e840f507e20f3c2a09dfcb2db9f4bf96d0759b3f97bd32e17d9e0b9fa3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
