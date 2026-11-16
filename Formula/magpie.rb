class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4292/magpie-cli-darwin-arm64"
      sha256 "a06eeb6501398ec8f5bf1e13fa8dde8514b01a4f3e274fe2f85ec94ebdc0edf9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4292/magpie-cli-darwin-amd64"
      sha256 "9b776b2948bad46f45ce572329220335c11193d7cd0dbf9578d3c2605fbeb743"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4292/magpie-cli-linux-arm64"
      sha256 "19f11a8e9c00163f2d5929562beb17919c34c427834bcd095e8d8bf2fac3466a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4292/magpie-cli-linux-amd64"
      sha256 "fb897cd0b190d89b5aa7e8de2699c56cd7d8b9d271cfaf86340f59deea05a64f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
