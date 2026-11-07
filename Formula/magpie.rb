class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3210/magpie-cli-darwin-arm64"
      sha256 "fa66537c387cc88ad262609a54db44a4e954c5dd6a6b785b1472fed4322ad63e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3210/magpie-cli-darwin-amd64"
      sha256 "b5e6711713d48df8b74cf5bd4e69ace89fe75a7bd905ffa171d94b95aeb3f176"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3210/magpie-cli-linux-arm64"
      sha256 "33cf1b1f00feb825910eba9d7073ed04abe849d7e13a0b7c8fb82e2682261951"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3210/magpie-cli-linux-amd64"
      sha256 "2f6cfd0d3c3336ee1bc636981cd324997245f7c0c50849df51060f9fbf7a4cde"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
