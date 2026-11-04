class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2957/magpie-cli-darwin-arm64"
      sha256 "7b133c3af0720ebdaa93277ddcf0e03d6b8143f7c76720942b7715a1060f1c4d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2957/magpie-cli-darwin-amd64"
      sha256 "1bc596632e63645b179c2fcdf7df0ac2c687d3e8d64e8b551ebc78760fc54f83"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2957/magpie-cli-linux-arm64"
      sha256 "173f262679b9fe70d97f6d5bbf6a3c495a55e03a6ea80579d46910576a945828"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2957/magpie-cli-linux-amd64"
      sha256 "78dd19919f50b82dcebb27fa445882f64bd5e2d79c5c2e22a396a2e6321f4d84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
