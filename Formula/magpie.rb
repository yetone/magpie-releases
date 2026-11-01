class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2540/magpie-cli-darwin-arm64"
      sha256 "02d98b388c5c02aa02d9d004e626fe6b5c4da6b815b4605b50dc443b5e453c6f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2540/magpie-cli-darwin-amd64"
      sha256 "a61a5394797134d5d350c6d32c4c5c533bc833a284d0bbc29ab356758f973131"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2540/magpie-cli-linux-arm64"
      sha256 "2d6a964580afd69f4e1ee28f92a9acc47037d3a66f7d7f82921b5c28b697917a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2540/magpie-cli-linux-amd64"
      sha256 "ea06bfa159183281abfac7e9f020ea74228ff5cbc92fa7f6c70b635750467b84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
