class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3685/magpie-cli-darwin-arm64"
      sha256 "c355f4ef1bb6a873d0a8cf35cf5bc63120d5481af04ff30b5f33112206ecd3ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3685/magpie-cli-darwin-amd64"
      sha256 "769712d05d8ffd25defddb3ed24583ec1ea1fc1fc2d3712356c2932a7d6c38da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3685/magpie-cli-linux-arm64"
      sha256 "d8837f230b1b9673c4dc01cc61591e7e4e74ba2845317b63fc49afd1865d3da6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3685/magpie-cli-linux-amd64"
      sha256 "d5af3b88802302603deacfc7f65963460c7936890ae2de22a7ec2b0bed5b74ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
