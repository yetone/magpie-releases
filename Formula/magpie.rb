class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.911/magpie-cli-darwin-arm64"
      sha256 "718044b5db2bf86db9b7b67eab32ff9d2000f0f850f08b0baa35a83016309c32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.911/magpie-cli-darwin-amd64"
      sha256 "ecb0b7e36fb9cc2fe86c669236f543f9e41c63cd0bf0b93dc41026a929a45d3b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.911/magpie-cli-linux-arm64"
      sha256 "cb59f06c7a9030b5463e94ac640340abe4f17c580ac63f047667931e9871068b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.911/magpie-cli-linux-amd64"
      sha256 "7b1d3f34d7b7f8cb19de311e53c380df0b3d818753851e3e988e692ee5e77a05"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
