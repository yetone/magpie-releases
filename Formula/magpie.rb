class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4684/magpie-cli-darwin-arm64"
      sha256 "2f5df54a29a80d559917b121a13663b97887b6241da064cef98edd4215ea628b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4684/magpie-cli-darwin-amd64"
      sha256 "46664ac5ec4a3754ff75f5dfa6522f928e04e77cfbe9ad4b2f1146f10772e2ef"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4684/magpie-cli-linux-arm64"
      sha256 "036fccc49e2d68be0dba20762ef380b0099bdaaffa2951acdaf81f8333cc3b69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4684/magpie-cli-linux-amd64"
      sha256 "0eec8ab2cd26cd0a703b220e1953e409bb487f9be603103bd2ae9172a9889894"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
