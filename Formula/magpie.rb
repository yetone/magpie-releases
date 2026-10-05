class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1042/magpie-cli-darwin-arm64"
      sha256 "8f0572a6649cc88ce32f11c1a4ebf82a43fada0d48ab990fade7396ffcc97183"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1042/magpie-cli-darwin-amd64"
      sha256 "f49542383546d9e51c420d605bb07879add45f26c5c833a9e59d7d19b78d7258"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1042/magpie-cli-linux-arm64"
      sha256 "a25de92bfda7304e4468daa3f3906217b1f8333f3e31e800b373d05a3f18a38b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1042/magpie-cli-linux-amd64"
      sha256 "bed8fd1d23e92184a64680c4a61d4a151a1810fb10a5d8ce77f635a703643d93"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
