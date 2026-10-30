class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2178/magpie-cli-darwin-arm64"
      sha256 "da7635ed0552f70ba75a8515e28c3f00b52961c1e00584b736429654e8701ed3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2178/magpie-cli-darwin-amd64"
      sha256 "4c7b50b506ace4918f431b61cb4a1657b3c4c0a909344a5100e5f8c97eb09417"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2178/magpie-cli-linux-arm64"
      sha256 "90b44e8e4ad99719d2f5aafb0ec13e241832ab2a2dba148568a8f5196d0641cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2178/magpie-cli-linux-amd64"
      sha256 "d31c546b4292e371d15c77f63478e39e6c649753c92c280105b9ddfc1bd3594e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
