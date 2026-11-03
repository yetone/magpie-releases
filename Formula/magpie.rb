class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2779/magpie-cli-darwin-arm64"
      sha256 "0aaafe934bd89946e5d54a3faeaa658ec9bd0c0c61f2e39d24b5db4bfd9d3d6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2779/magpie-cli-darwin-amd64"
      sha256 "009a4d44b2616c9654c84ef151b74fc9f36cf88bbfbd71a9b39ed3b20ccce068"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2779/magpie-cli-linux-arm64"
      sha256 "d58a8e93dbfe9d5f76886ff1fd15a5e6a5c907eeea785e23c50daf3d9eaecea9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2779/magpie-cli-linux-amd64"
      sha256 "c048e750dbd439afead695fd55b889326d73c76126dff6d13fb63a930706168d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
