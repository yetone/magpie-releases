class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2174/magpie-cli-darwin-arm64"
      sha256 "635b0b4539ff5748304fcd90fab330fff34fad6ebedf6c51567f9b937a98bdc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2174/magpie-cli-darwin-amd64"
      sha256 "dee1fb82b8fa75827d84d113c6ac04d196f628d71d312189c34f83e46a7b6cb9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2174/magpie-cli-linux-arm64"
      sha256 "dc138254c92eceedc22979eb5c97351c14b7e83b20a7671e0b750515d01171e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2174/magpie-cli-linux-amd64"
      sha256 "c2fbb0cb27092a70d633455c1f0bf1ded36b71e002d1c3570d98d3a3dfba9963"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
