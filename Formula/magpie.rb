class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3938/magpie-cli-darwin-arm64"
      sha256 "aead88a5f1507fb1a77e2aa15f2e2f71c868e97cddbe68a62321ba6e49662e6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3938/magpie-cli-darwin-amd64"
      sha256 "87ef13c8b09f2c213e77adbe2f9f5ae7b1aba69838cae43521e570f717668656"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3938/magpie-cli-linux-arm64"
      sha256 "9b635a00a4b374aa4706cb122f5bb89ec35be314603026daa0f7d78bd789847c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3938/magpie-cli-linux-amd64"
      sha256 "ab8b3af8b7fe9f46d7859241891dfb5237d5e59abe4470648fb1572cc6478bda"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
