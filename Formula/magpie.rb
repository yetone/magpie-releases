class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3369/magpie-cli-darwin-arm64"
      sha256 "7549584be037725043b76fc5d98c154a652992c24ef88cc6c77b5738a5e917eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3369/magpie-cli-darwin-amd64"
      sha256 "1452b32bc0efe69bbe4992f685185b59bc869f73bfd3284afb653fe1067dc7c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3369/magpie-cli-linux-arm64"
      sha256 "df405a6ffce1393f37dd898a8764d6368e8442068ade67312191bc6372ab955e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3369/magpie-cli-linux-amd64"
      sha256 "f9094080c55a5427c68b7654f162c33c783f33f357c038e85dcc3ae286781aff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
