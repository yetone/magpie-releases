class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4881/magpie-cli-darwin-arm64"
      sha256 "158c0120ef70cfb7b7a44adc3c9dee711f77798148677f2662fc50817da1341f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4881/magpie-cli-darwin-amd64"
      sha256 "954110980703adcdd43a2fa8073db9f164f672d257933e81b9082571451aa801"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4881/magpie-cli-linux-arm64"
      sha256 "d008549ce91babeccbf712e8ffb1a2b6afb6ab7b42134bfce80359abe7b61b57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4881/magpie-cli-linux-amd64"
      sha256 "6bd17e229947efac9ac761ba7c2cad7293ead79cbdc80da3ff598c67eaa0c6aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
