class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3384/magpie-cli-darwin-arm64"
      sha256 "bd7ad5aba11171b5cf5e6550a87e0855813af63c0981cdd3e096eefec2076b06"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3384/magpie-cli-darwin-amd64"
      sha256 "57081b648440200c3a16db5da4733432d9dec9ad516779948c011005e1ecaf3d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3384/magpie-cli-linux-arm64"
      sha256 "caffce3fd76a54c65ddc121a99d6e6e26730da2cea56fd51fb63eaca9b06443d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3384/magpie-cli-linux-amd64"
      sha256 "7d66faef21eb72d907df3e2c75b33e896dfdca9597deb96e3701132d3872424c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
