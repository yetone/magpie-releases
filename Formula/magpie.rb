class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3168/magpie-cli-darwin-arm64"
      sha256 "b3455b681e61612d1fdcf3704ef795cb3e89ed6db8fd412578e9bcee8033ee0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3168/magpie-cli-darwin-amd64"
      sha256 "dab7a4268f31eaf8bc758ac692758c5661fcf447a0f35fccab3746e878e05321"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3168/magpie-cli-linux-arm64"
      sha256 "6f0f0ce04a80a3d1f9b2055d676301297dd33d2db96fab43fdef9d29f3783076"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3168/magpie-cli-linux-amd64"
      sha256 "9244c28a1a20328a1876e33faa5fb0da88389de67b7150f55daae60ba63652e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
