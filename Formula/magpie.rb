class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3303/magpie-cli-darwin-arm64"
      sha256 "c140e2522da13398e67ea8abdccd1166b2ec9418a2ff8f196b77b60d51fac468"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3303/magpie-cli-darwin-amd64"
      sha256 "51279f7320f46bd5d144324d1901dc65650bd764a1c44ad7bae6dd5f37a8aacd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3303/magpie-cli-linux-arm64"
      sha256 "0f2b2f5d640701d600b12b4e04140e9e096f75168f1b6784afc95dd3546f0c7c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3303/magpie-cli-linux-amd64"
      sha256 "5605a7aa65362e6b73fb20db8d4eaf56e21eff9664149c741db8f7faa7e31453"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
