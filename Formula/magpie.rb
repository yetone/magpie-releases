class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3823/magpie-cli-darwin-arm64"
      sha256 "0bd1c0de81779bfbbac19a41bd85020c9ad602ffd38239fbde9958a450aea364"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3823/magpie-cli-darwin-amd64"
      sha256 "905248e47ab101e0f82ef872f4f963bf97f9b9cd453061df4fee4dc7cee2a81e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3823/magpie-cli-linux-arm64"
      sha256 "aa8360f70809aee20f00cfdb87fefa7112f79ebdf4919718474a01395408f532"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3823/magpie-cli-linux-amd64"
      sha256 "70b007f7eddc8fa6b3a6959e4f8fda8c3c50e213b978c132a26517b57b4589e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
