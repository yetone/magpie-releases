class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2585/magpie-cli-darwin-arm64"
      sha256 "8413fcbaf8f463ced1ec1f0b48143879b38452791ea8424e8b8f93cbd7da4c03"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2585/magpie-cli-darwin-amd64"
      sha256 "8f1eebbdc40b1ff85902b2f58757cb74d49f3fe2fc44efa238d62e69f60c5445"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2585/magpie-cli-linux-arm64"
      sha256 "b11aa22569715ea8df852925156dab9c0f78f9a486a36e56a31777763c5dc8e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2585/magpie-cli-linux-amd64"
      sha256 "0032993a87834ea9225447be34cc8e277c48fbc72bca287614761f5f19955afa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
