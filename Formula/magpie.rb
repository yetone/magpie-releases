class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4720/magpie-cli-darwin-arm64"
      sha256 "fbc2a196118aba0bd26db2a8a0f4959e91cc92775d2881de459260ca1a075ea3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4720/magpie-cli-darwin-amd64"
      sha256 "df661b3b3ac6ace73ccec832ec5d22372ae32f69e561012e5744f30b3c8d2c61"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4720/magpie-cli-linux-arm64"
      sha256 "608c63726d466d112f5c417103ea3adc1258646e0b7d875fd80da376da6ade1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4720/magpie-cli-linux-amd64"
      sha256 "ed8e5ee2c8dc0adf210b7fd228f6dbfd50bf068863ea5a709ec26cd72df20bc7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
