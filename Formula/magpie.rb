class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.947/magpie-cli-darwin-arm64"
      sha256 "4b79fbc34c7f4f0567b85713613f375a97e06e6051a1712ba1cb519a26c02fc0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.947/magpie-cli-darwin-amd64"
      sha256 "7a8b99beefe9a6c6aeaffa4fcc104237337e96125b41357fe12668c639beb980"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.947/magpie-cli-linux-arm64"
      sha256 "2677bff77f040e58f2bef9fead6ce97f44c3169c8212a6fcd642347017cc9d3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.947/magpie-cli-linux-amd64"
      sha256 "43c2b1b25569c23284a8e0907774de9cb8f59d8e35d56e76e9b1a6db77c43ba2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
