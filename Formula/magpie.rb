class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2286/magpie-cli-darwin-arm64"
      sha256 "88587b5c217a8c3942eb630e6600903e63f881febac39229460566e7fd63fee2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2286/magpie-cli-darwin-amd64"
      sha256 "8e6cfcaf4be238860b634c01c8065660f65c923e34593bcadcac0aba7773e33c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2286/magpie-cli-linux-arm64"
      sha256 "ffcdef2d709c8fb55aadf9da79b00d69244716e5355b14150f7b1dd124c834bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2286/magpie-cli-linux-amd64"
      sha256 "82aad3b5f3de0104388f840d2880a1ee2b0becf93a4056b5e77345873e804e63"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
