class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3388/magpie-cli-darwin-arm64"
      sha256 "5f9ab150a0e557385f0deaf1b4d20f79c1cd1b411c8d45358fb0b3921d7085b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3388/magpie-cli-darwin-amd64"
      sha256 "3b1d3272e775591cf7e95395fd8a809ba67570bb56300f0d25d877adbf4f0e62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3388/magpie-cli-linux-arm64"
      sha256 "3ae2355c6e9670340479f64860fc51634a2b37db8c6f4858295531566bfc4704"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3388/magpie-cli-linux-amd64"
      sha256 "eaf4d44585536ec1617146cc571ee0d4517ca0201442384ac17756e1535a8879"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
