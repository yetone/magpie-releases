class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3256/magpie-cli-darwin-arm64"
      sha256 "0ad80de9f6983bf6172829e51da8249f4a99cfc38741302d7a3edd8116c46602"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3256/magpie-cli-darwin-amd64"
      sha256 "82576b7749cc81ad48fcf6284496ddc01c6dcebd836dd44f564847f854cb5822"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3256/magpie-cli-linux-arm64"
      sha256 "11d1796cd165ff4d21e5f941812e3641c972274e3cc80d5da901ba01c35bfc24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3256/magpie-cli-linux-amd64"
      sha256 "d85933a8e3d2b4927e6b52fec36b240e3610f55ab3860e1f15f13824f4995965"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
