class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1045/magpie-cli-darwin-arm64"
      sha256 "2fa2467dfbf9a4ec7a98976bacffa05675af8ac165dddd2832994d822e145295"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1045/magpie-cli-darwin-amd64"
      sha256 "b9281c60f6c7b6763b083c51cae775832121e5947182b1852c44985a71a07a72"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1045/magpie-cli-linux-arm64"
      sha256 "a1968224a182ccbc16b0ebabe01b77b7ad29d1619aca4533fcc66431e0bc3668"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1045/magpie-cli-linux-amd64"
      sha256 "ff0cd52f30f8d72afd1abbafb333748f8fa65b707e0cb32ffe53e4486a37dc71"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
