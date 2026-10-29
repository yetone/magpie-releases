class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2109/magpie-cli-darwin-arm64"
      sha256 "042abb12f78b3edbf8346b3ff898977df2a829e2ec5d60fb4358b63f8c530409"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2109/magpie-cli-darwin-amd64"
      sha256 "f165f2c100e0259d2b7a10586ec0d2807a49b08d9d7cf2996cecb7d397ebc29d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2109/magpie-cli-linux-arm64"
      sha256 "5e4221ed4641b4126ced056a656b02b8e42eeee7745b11bd12a1cc66c203a52c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2109/magpie-cli-linux-amd64"
      sha256 "256a5a7a5ec393a4a5bf34b497b9652e9d34484f00ba5a4b6edf93885252fa6e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
