class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3387/magpie-cli-darwin-arm64"
      sha256 "dd30c40a6712d8d5c3a8310b022ca25dbe27cd649dd1bb5c36aa5784e18ce654"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3387/magpie-cli-darwin-amd64"
      sha256 "38e9916e4068a5e36d8bd92881d8ec36cfcbc6c3deb74d3f92c52f547d58db38"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3387/magpie-cli-linux-arm64"
      sha256 "2241bdbbe95eaf36d5eecb5c454c0bb4585e4f37d6e6467bca6bed1c9d078ce4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3387/magpie-cli-linux-amd64"
      sha256 "1f3c5aaa6a6312b12cf9fd1791cbadd11c51d9e4ab60b3d27611e354e43cbb01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
