class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4317/magpie-cli-darwin-arm64"
      sha256 "3725c3bb7aab87ef4a1c7118a065501299505b9946e24ca356c6ce419b3c2664"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4317/magpie-cli-darwin-amd64"
      sha256 "8c6ea9d83339bf059b0902ed50d3e66780da37fadbf28683a785dd4b6e89a61c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4317/magpie-cli-linux-arm64"
      sha256 "093ec130efdfb91e0663b4fc2c9da5d27b3e204b3aa890743016ec641b2668c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4317/magpie-cli-linux-amd64"
      sha256 "7fb2fa366ee7d697b4dcd9c644ec26e89e6ad3d03b7bc8fed7de5f7145f7f7e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
