class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2880/magpie-cli-darwin-arm64"
      sha256 "677c3e3b6ef1bec1d97480d22971bf3f02a29751319b852f5a15f0ae9dee3e08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2880/magpie-cli-darwin-amd64"
      sha256 "d9d902da73d979f7a66018273cb2016efaf6de3597e2890b058240d4a50a87ba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2880/magpie-cli-linux-arm64"
      sha256 "8da0b85b4585a31c2be3d66138e56510f1ed127475b89fc3907fca7fbd68b5aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2880/magpie-cli-linux-amd64"
      sha256 "78af31f088e7da6d3a2a9cadbc5975e34abb2f53f53074a443822ce29b160c30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
