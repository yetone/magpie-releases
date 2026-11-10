class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3515/magpie-cli-darwin-arm64"
      sha256 "76bf22c8d19f42e3bc4e3acaf6fe3e45543fb7c071ed784e216e8bd0cf2858d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3515/magpie-cli-darwin-amd64"
      sha256 "be2a0a01e30a87ced9b508316c0e52e3257fc455b4c86a93fca9bdbdf632c6ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3515/magpie-cli-linux-arm64"
      sha256 "f4f422870c2619d7c18487e9a9bbabc47a51a5a21e7c0df5332c9c9307da19de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3515/magpie-cli-linux-amd64"
      sha256 "5ccfa9f4c319f28028cf96663d29d3fe8d657e08be651d35bbfed59b5cb5f61d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
