class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4914/magpie-cli-darwin-arm64"
      sha256 "79d2e88b456e6c19953877dec2c1a354c775958cd430bb425b6c20d119b74db3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4914/magpie-cli-darwin-amd64"
      sha256 "842fd7ebf99db7bcf2578b6a2d1575b713bbd810c341b4cae0f544f104bb3b39"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4914/magpie-cli-linux-arm64"
      sha256 "90e6fc763d8b20c86c5046931899ec739dc834c114af4fa40fb9d0c44915f08e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4914/magpie-cli-linux-amd64"
      sha256 "d50a84660fe9f644011b2ea66f913d33e39fb4eda399b27171c3d7ed5e4569a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
