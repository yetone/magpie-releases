class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3868/magpie-cli-darwin-arm64"
      sha256 "e00aa133e4a0b5a8aa02514cacd59434103414dc2483a2b7ca05934863ace1cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3868/magpie-cli-darwin-amd64"
      sha256 "7de92fd965e710023e821387b093900cc7cad03de9457355570824bf0ddc429b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3868/magpie-cli-linux-arm64"
      sha256 "11e8af458986974fe1dd5c1ef5b9dc9de9b0ef850ff6065a5d20b43d6f5c0a8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3868/magpie-cli-linux-amd64"
      sha256 "1541256b9290ab1da2d57b14fb43bd530ab3f44fa97fe87106e44b56a414a08f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
