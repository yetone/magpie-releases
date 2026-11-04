class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2956/magpie-cli-darwin-arm64"
      sha256 "1909b720ac176749552a085af8fb027068ff8599af724067a36bf62f4998c84b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2956/magpie-cli-darwin-amd64"
      sha256 "51d733816800690cea7bcc7b145cd99f5070796742daeea42c493869fa023185"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2956/magpie-cli-linux-arm64"
      sha256 "636c3018688d9fbb1d4d50f15ebd40e5e0a4a1715f3a0253913fa9293ab793a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2956/magpie-cli-linux-amd64"
      sha256 "fdd7a9eb0160a9face3da577fa27a3d7159cee9327de0d7327e9499a976b35c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
