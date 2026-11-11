class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3781/magpie-cli-darwin-arm64"
      sha256 "fd3a872f0b78595c4ff459fe12fbf047d0d716e1d62766d8de14e77d03125e6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3781/magpie-cli-darwin-amd64"
      sha256 "ab05fb5ce83b5a117055fd843c3dde4fec915b986a5d09e24e5dd9a0154ba8f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3781/magpie-cli-linux-arm64"
      sha256 "5d14e339fd40c8183c6ec8eb7f0da6a6721d55872b4d44fd8d23e7be2aed42e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3781/magpie-cli-linux-amd64"
      sha256 "0c77d325fca6d1f3801873503ccdaf539066f350d129c7e176eccb4afbf880f7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
