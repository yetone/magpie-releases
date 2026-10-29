class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1995/magpie-cli-darwin-arm64"
      sha256 "e3db46dbbc0e6f3111f3e3552329eabeb4b2ae95a6c010e1f2ef3c461c9b0520"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1995/magpie-cli-darwin-amd64"
      sha256 "7c7be6ed11b25a8b02bf67fa9dd44bb0b4bc92328685972d310e67ad914b4b59"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1995/magpie-cli-linux-arm64"
      sha256 "d8af63644422998c8cd2d07fc9d21a1543b08f5055d09cc3b7a83d9a4ee60dd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1995/magpie-cli-linux-amd64"
      sha256 "c6e0319707c321a13ef65da80031c07faf59296cde4f7b08a08a1b0107ace77e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
