class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4849/magpie-cli-darwin-arm64"
      sha256 "3a959e49bbe817c880f460b233cf98f4de03349ecb763d2a5035af895f66f632"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4849/magpie-cli-darwin-amd64"
      sha256 "2feda1489cd96354dd9c8788a8e285eafae767bca80433af9c8d74388570b24d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4849/magpie-cli-linux-arm64"
      sha256 "31f1c0e6038b97a5fca14eb76dbce3cfd9fb233442ba2cf372f00863f427290d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4849/magpie-cli-linux-amd64"
      sha256 "533925567cba003e9466641ec29f1ca3bf67168e3b2c8027c5e6a7732d3f108e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
