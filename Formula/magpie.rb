class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4113/magpie-cli-darwin-arm64"
      sha256 "cab426b942c30f2fb44996e7b765cf6e665ea7ace2ec507dc01c51908f377a02"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4113/magpie-cli-darwin-amd64"
      sha256 "1135801c04ed4e2fb79d1a079bb28424c5f05d36a25eeb0a307f1c72d6e22740"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4113/magpie-cli-linux-arm64"
      sha256 "7b446845dc8348e238f8d540171ff35e027b77e67b03090d6b153fece318b23a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4113/magpie-cli-linux-amd64"
      sha256 "fc710e7f7aa71c1b4fdd4854e6ffb4f1030328601abc90f434a2fe8757337322"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
