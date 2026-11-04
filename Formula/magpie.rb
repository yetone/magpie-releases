class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2958/magpie-cli-darwin-arm64"
      sha256 "4fc8592c12cbf94da3ede0148fa0b81c16222eab39b3afdb6bd3394aa6778715"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2958/magpie-cli-darwin-amd64"
      sha256 "0148c0924175e86242e87cfb6c9c17f1f9662d1c076a36719802ed8b54acd224"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2958/magpie-cli-linux-arm64"
      sha256 "b5b92f663d1477a9aa2d1adae27e136e5e49a50c50449c30cf04c7cf08380a0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2958/magpie-cli-linux-amd64"
      sha256 "98182f329ef6a794bf8fb46c5a0c85843d0e7b4b31159ae0f06d4d3c7728cd0a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
