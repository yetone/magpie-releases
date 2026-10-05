class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1052/magpie-cli-darwin-arm64"
      sha256 "9e4e49ab3c4b94ad688472942f31a0d4d4662d614f02773b890c180732b236da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1052/magpie-cli-darwin-amd64"
      sha256 "a3461ebf7c1ede6cc6626ea3b1282e096e80da44711c1e016e92c85c8d95a946"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1052/magpie-cli-linux-arm64"
      sha256 "35259faf9ce1b4346f8ec569ab30706040f998f0e3dd9bb1036475125975d4b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1052/magpie-cli-linux-amd64"
      sha256 "e4deb7cb10ea48eb7aa52f8be1fff135960d43ff7de5cece28b6164003006879"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
