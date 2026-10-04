class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.903/magpie-cli-darwin-arm64"
      sha256 "fcb0aaa2deb6e5f73c63e2b47d8862fdbc43f768eab952f878fbd02bb77a79bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.903/magpie-cli-darwin-amd64"
      sha256 "ed508ff542a5d9f8a3aa449d985929495c2d27cd62265abc2b28117174097afe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.903/magpie-cli-linux-arm64"
      sha256 "a7380e66763384aae4b5172df5d3aa0ae38981bd126fd9657821a295a64f8927"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.903/magpie-cli-linux-amd64"
      sha256 "709676e14d6e5b7b3df8dc431cd5098f2f376caf895d9b9f5baba6a7d6095a2b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
