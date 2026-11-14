class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4185/magpie-cli-darwin-arm64"
      sha256 "3cdc2d0a566ba1a54c2ca33cffef5d3589348850dcabdd3d7c246bc35e15da86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4185/magpie-cli-darwin-amd64"
      sha256 "637581f355aa8b1be43533ff517eedd434c490e1eb1c6b590fc1ff1208163a00"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4185/magpie-cli-linux-arm64"
      sha256 "fb9284918612db98fd7886acef21705c542fb9df0b0347468478a6b153a003ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4185/magpie-cli-linux-amd64"
      sha256 "b65bf0409a4ab0c3d29b2c1ddad2c645fa2848ab81bc8e36c06518db7dd81553"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
