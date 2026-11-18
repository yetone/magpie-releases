class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4479/magpie-cli-darwin-arm64"
      sha256 "410b782ee29c1bd321207526fe96ec4dbcaaae2d42237834f9b502dd70635dcf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4479/magpie-cli-darwin-amd64"
      sha256 "631f722c8f793fde94965c0c139e237180d8589cf9c6d19a9407dd64e3e4ba22"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4479/magpie-cli-linux-arm64"
      sha256 "c0bc8cf0ad7861d76602efbd51d24bbaaadb075e11b91080bf9672a64a0989f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4479/magpie-cli-linux-amd64"
      sha256 "ca7a21b665e637685c8293735023fcf156a2a848997b143b44dde5f8b9aa0f35"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
