class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3816/magpie-cli-darwin-arm64"
      sha256 "3af8898ffb5e002b61f208c1eb7c9c819e356ec6a6fab3070f7dbc9fbea9a762"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3816/magpie-cli-darwin-amd64"
      sha256 "5bfad42847e0c563ebd8590baace4842cefaf6896ac2fe1a0b6783155ec10f59"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3816/magpie-cli-linux-arm64"
      sha256 "bc1283ec1b09ab7a71c09272a2dcf12b2b6ecea67863a260b62d59ba4e839f47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3816/magpie-cli-linux-amd64"
      sha256 "06611a4b5899da86a84fbea7c439affc4831dc2245036cc22a03e71562aaac64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
