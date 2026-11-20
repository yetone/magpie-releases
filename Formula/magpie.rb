class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4575/magpie-cli-darwin-arm64"
      sha256 "b09ed8357308e7ecee61c39dfdbc2b4dfd690eb243f33621adc4cbca7aee7686"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4575/magpie-cli-darwin-amd64"
      sha256 "8c090e0b5b498f93baee548f492989178891ac70609473e1481f7ad7988b7d7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4575/magpie-cli-linux-arm64"
      sha256 "71cf713a2d85d83f72d98584ee1c3bba600effbae849252ceaae971d0213481e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4575/magpie-cli-linux-amd64"
      sha256 "34683eb0486cc3db6d848e8857c44af812860a97630e3d0275bf1b05828c3e9f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
