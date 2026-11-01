class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2614/magpie-cli-darwin-arm64"
      sha256 "d0c7dea9f9783b21040a75662bf9893e417065f3820e811fd43f73033d68e30b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2614/magpie-cli-darwin-amd64"
      sha256 "a1300ab85be6357c7859b8e0be6c233796fe4f16ba8929afcb72e8e43e9676ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2614/magpie-cli-linux-arm64"
      sha256 "671aeca42564b2c2d5b1aad789864f57b7c798e4409b266fe35095a76209cd4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2614/magpie-cli-linux-amd64"
      sha256 "121ed1c51777679f38338e5afdc4aff7d44cbcebf10393183dab0a7d9cc5eef7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
