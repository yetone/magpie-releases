class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3662/magpie-cli-darwin-arm64"
      sha256 "7a34129ed11826e383c12d1b318480f0ff35dec8fb16c55d47d80d73663f409d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3662/magpie-cli-darwin-amd64"
      sha256 "ad8dbcc3210ffa56642346ec35c3fcbd11e3621fb77f47bfc12927210529a370"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3662/magpie-cli-linux-arm64"
      sha256 "e7690c7518dc13f1539c3d135680b1f76652d7cd081ba1d0a8e3f9b89e079207"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3662/magpie-cli-linux-amd64"
      sha256 "69256e5576080f133d9e686902bd81de75fd295d33c64443342e4ecceb06f5aa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
