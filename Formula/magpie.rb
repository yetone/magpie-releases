class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3029/magpie-cli-darwin-arm64"
      sha256 "5cada3ec72f96ed1b982ceba370705efd7bbcc5dcd7581f92b7c48546a7c16fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3029/magpie-cli-darwin-amd64"
      sha256 "d73a4f072aec4d956acdd66a99b759f04b92ecfd6fb78715d2f76c2e400d115b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3029/magpie-cli-linux-arm64"
      sha256 "fb6aeafd3bdb7001b2e871f06fe68187e810c6197a768b4640b3d8eeb97c6fda"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3029/magpie-cli-linux-amd64"
      sha256 "2fb730172536243a69b56943d69c81a429c1330068c6cb609ee13621fcaef257"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
