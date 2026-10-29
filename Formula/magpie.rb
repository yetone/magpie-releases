class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2049/magpie-cli-darwin-arm64"
      sha256 "2c0bcd2745ed818654331ad3625db3442a2b72dca97dd702177558df68cef2c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2049/magpie-cli-darwin-amd64"
      sha256 "f4ee846d4b4d5e5d6a6fecce6afd37f6916f919a40ab0513e7dfe4107f8ec99e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2049/magpie-cli-linux-arm64"
      sha256 "c1c920c80822326afa262ad72261821d499a4cd384ef55015c5fa710b272d392"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2049/magpie-cli-linux-amd64"
      sha256 "a24633c072135bd47628c540efeb66c88be5c57e4893f03b845c0ceac22fd36e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
