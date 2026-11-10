class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3526/magpie-cli-darwin-arm64"
      sha256 "a3ac6aae9f4b59db37d03e94399206230434c26a1924e1153619b5132dc1af79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3526/magpie-cli-darwin-amd64"
      sha256 "9152c614eb59b482d36cfeb2f683d483d7f4a5a3a5235082844424f183783ddd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3526/magpie-cli-linux-arm64"
      sha256 "7916ef04c7f9c63f6fec493adc338b051f65cfe6d78cd843800a748eab89cfae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3526/magpie-cli-linux-amd64"
      sha256 "fcf5b5502d76583c3fbe6cd00eef22d8e48a6cfc6dba1f52e3eff2d881ac2a1c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
