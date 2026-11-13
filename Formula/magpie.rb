class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3994/magpie-cli-darwin-arm64"
      sha256 "2369feb534630c525080140efda0b9c10216813539833e62217ba3a708dade6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3994/magpie-cli-darwin-amd64"
      sha256 "e38e3bd8127eb0e63440426b334a7045bc33dd715b82997ca7b28d57cc9a9429"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3994/magpie-cli-linux-arm64"
      sha256 "2ecb07a6442ca7dd06d1ab4483286245cddea82ac2159a6705c3713bce4fa805"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3994/magpie-cli-linux-amd64"
      sha256 "1a0fb2c115950640f69983e165ea79b25b614141e19f8a69b3e121ac7ef5ed69"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
