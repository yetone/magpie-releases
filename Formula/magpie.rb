class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4391/magpie-cli-darwin-arm64"
      sha256 "3d2a2d44601fc8afd86c98ff5a3077b11a0e8b249d48ade2d39ee4575069af8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4391/magpie-cli-darwin-amd64"
      sha256 "f5bf2fc5347219a12500a3bda1ee49685fca6c5f448ab55663260493d49c1910"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4391/magpie-cli-linux-arm64"
      sha256 "65f02b0ac1cde51d22e6303fda3fb5fdcfc87e62c6c9c8172421a92bc4b8627b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4391/magpie-cli-linux-amd64"
      sha256 "7477fe04c2c0e113e2c8c2f459c2e8562ac2285540131833a27087b9f3c837e0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
