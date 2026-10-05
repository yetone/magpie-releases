class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1004/magpie-cli-darwin-arm64"
      sha256 "930227e7f06c8865d445cbacbc66f0e8f55a1ad96cabf18f5603a489e93655ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1004/magpie-cli-darwin-amd64"
      sha256 "906ddbc60702852bf67ca7a625e1a89b22c3bf4f896c88a62d6fe565e1707311"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1004/magpie-cli-linux-arm64"
      sha256 "aa2ad9831a7c1d1b680c7ebe344e15c6fb2694d7259dd51151e8d56f2b3631c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1004/magpie-cli-linux-amd64"
      sha256 "cb9aceb951f90c458094cba41c73bfe8b8788deb7e04a7dac96b88c7658836cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
