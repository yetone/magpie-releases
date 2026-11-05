class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3043/magpie-cli-darwin-arm64"
      sha256 "6388f8c172ed14eb0017cda50b2850780d8c1687eedff01b2b34f818c3a76144"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3043/magpie-cli-darwin-amd64"
      sha256 "5c8dc1beea0c2605c68b11c84c2813ba312fe49d8c43fd2edf5bce39fc105864"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3043/magpie-cli-linux-arm64"
      sha256 "b6a3d691476a16d13030f87b89dc0d913c82150808c7ad7a79256547809f658e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3043/magpie-cli-linux-amd64"
      sha256 "c9fb4916539f546509aa9e6579cb4079534a4a30e371021d70d9a9c6b02d77fe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
