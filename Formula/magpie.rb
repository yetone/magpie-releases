class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.916/magpie-cli-darwin-arm64"
      sha256 "3231dbc9ea01bfd615f2742397128f2990c207440ffaf3c8f4ca771bf37a1e11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.916/magpie-cli-darwin-amd64"
      sha256 "052ab82a457684be2215eef03bc93374924ace258644d981bd29411f5b754439"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.916/magpie-cli-linux-arm64"
      sha256 "3c29d76759aa15f2a10fe3f8bca07b4a9aecc7ccf51fb6e44ebb2db43f81b0ec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.916/magpie-cli-linux-amd64"
      sha256 "028f2751351323d1aa00e5e4f1eb7fd776188ec5de9c0ff6bbc8ba9e30601e8d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
