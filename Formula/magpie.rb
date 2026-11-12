class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3955/magpie-cli-darwin-arm64"
      sha256 "96505765a94bb141a6b4134af0adb6808668242857dcd63aa27505a9323279d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3955/magpie-cli-darwin-amd64"
      sha256 "717776f2c723dd75276eb6935a01dab5a996dcf12a7f221f25655019145ec039"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3955/magpie-cli-linux-arm64"
      sha256 "db8085ca8d5be52999be7c52bb80cd56624b8410ff6fdd5d8bf4c5f442d6d1d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3955/magpie-cli-linux-amd64"
      sha256 "9fbdb224e4d05c6e239070dd37e58876bdd0ec78d887a5c0c6dbad5354623348"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
