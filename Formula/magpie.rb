class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3012/magpie-cli-darwin-arm64"
      sha256 "8ec46f322bfc989e5aa7ccad907202cee308da155f0e6d6858cca7fb496725dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3012/magpie-cli-darwin-amd64"
      sha256 "f7ca84a6886e1a6a6f71efe3092d35ff2f2aff7570c07c7dad8b06328758a3e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3012/magpie-cli-linux-arm64"
      sha256 "8402aee544390a56b1a95722fcdab9cbdd5b55b9073b798e37cd03860b4e495e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3012/magpie-cli-linux-amd64"
      sha256 "ff421e1d1727a4420c3559a321bc0ac9d9be590b6a2698dc57749fcd3cec8ac3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
