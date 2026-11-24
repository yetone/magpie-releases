class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4754/magpie-cli-darwin-arm64"
      sha256 "d901f4c75e62f536f1e5b45fd33d79bd2ea85f2d153c295447269201cf8351e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4754/magpie-cli-darwin-amd64"
      sha256 "46c54b620e1b65bc053dc751fe658b3577b55f345772e331880e45bbdedc602f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4754/magpie-cli-linux-arm64"
      sha256 "7a59763ac03099f2171f63465743309482cc73d787c85b2c9f5fea7fdd3aface"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4754/magpie-cli-linux-amd64"
      sha256 "b01aa6c92045d369e920ebabf452e4f5481e8589a919b1b8afaa745e869fa7ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
