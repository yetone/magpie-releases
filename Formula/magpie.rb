class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4401/magpie-cli-darwin-arm64"
      sha256 "a29a2f9e730cb77a8754cb58ca0f21ffefbb322da18c6e835c67398860de154c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4401/magpie-cli-darwin-amd64"
      sha256 "b6863620a60c6d6a195102b25bdbd3ffa4cf4afe461bef8fa66e80fefbbe5513"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4401/magpie-cli-linux-arm64"
      sha256 "03322bc0fc021c52f4658994d1c6118d2f8590f57d40a64cde1d4685f4cfcee3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4401/magpie-cli-linux-amd64"
      sha256 "9c34ac0a2626a8e0b302793704a7d1df87174d187946edd9e63f5533e8dcf697"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
