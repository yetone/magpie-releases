class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1993/magpie-cli-darwin-arm64"
      sha256 "8da8f6c51377f29246ecd9a704eddab6dd899a95e9dcb422ae87a878102e533d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1993/magpie-cli-darwin-amd64"
      sha256 "70a8ff9fb5dc7e6d482826b06f42cf22ee2a463f3b112c28756ceccebcd21c7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1993/magpie-cli-linux-arm64"
      sha256 "97bb2e604b7899d63742175c43d9fd8e57f06e1764c9390304c96907fe6a0c00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1993/magpie-cli-linux-amd64"
      sha256 "6b94bf4d9098eb5f57c1c9688097ce84f32567518413c01c828e8b81d61e598e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
