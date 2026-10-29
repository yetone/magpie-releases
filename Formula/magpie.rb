class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1987/magpie-cli-darwin-arm64"
      sha256 "b905e4e8b7128f8f83af6be279f3d85a92005e5fe4039ff37fd4bcf118b792da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1987/magpie-cli-darwin-amd64"
      sha256 "c6459bb9d8fb11740e95ace3d4496c68b4c4fe9ee958c9172d732322838c2289"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1987/magpie-cli-linux-arm64"
      sha256 "ecf78770d4e526f722586b58e7c55f33d34052e76cd6382a11aa2da46798f430"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1987/magpie-cli-linux-amd64"
      sha256 "d79b1fa83ed613aa4a0f38273747066f51f3026e7bfd2941f5351fd510ff5c1c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
