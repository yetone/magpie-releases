class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2897/magpie-cli-darwin-arm64"
      sha256 "bdbd82827debe66974ec769d3bf5e5cd45936942ce628611fc07ba8c0fc17331"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2897/magpie-cli-darwin-amd64"
      sha256 "9adbe4ac1953eb7091cc43734f789ce82c00e58978d3eaee37bce878c904e78c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2897/magpie-cli-linux-arm64"
      sha256 "6440bed57e3c6e28555fcb7867d21eb442acc0b883064cd6eecc498fee74b1f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2897/magpie-cli-linux-amd64"
      sha256 "d36d23631c4c8928af07754f669a7e930c466be17498cd9ca8160badb6b4d42e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
