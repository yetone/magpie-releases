class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1143/magpie-cli-darwin-arm64"
      sha256 "983b2f5669549f1788cae857ca2093204097e7139a8ec1a9bac3e7bcc12ad400"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1143/magpie-cli-darwin-amd64"
      sha256 "117ff968861a7bc7450cfe28e4e05526c36e9c5eef397f093cbbb634fe954e32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1143/magpie-cli-linux-arm64"
      sha256 "b156beca037d019d66c824b6b839060524ccfc012264d0b3f40605ed71dc3650"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1143/magpie-cli-linux-amd64"
      sha256 "6fb819e15beb4d66cd6595675acef1e41c6d779fbdea05a55a7b250dabab9ddc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
