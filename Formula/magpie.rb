class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3291/magpie-cli-darwin-arm64"
      sha256 "dcb9617af8b22513bb08b09bc7a56d6589f9faa24ca92eab7db1e31c9904fb3b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3291/magpie-cli-darwin-amd64"
      sha256 "d61de0e2dafda836d13914ddfaa20cf70b6bf140449ee693fe0dea4e57172416"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3291/magpie-cli-linux-arm64"
      sha256 "0e45ad49838085843539440c10ba34da35cedd42994d6410aa9b7516d8eca5b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3291/magpie-cli-linux-amd64"
      sha256 "45b3c812ce9fc7a210d8ec8449779a5f1de92e6a8bc5dfb33f1dfb89a2617582"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
