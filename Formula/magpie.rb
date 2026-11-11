class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3756/magpie-cli-darwin-arm64"
      sha256 "d3711a1b2342cdd83e39db828d71f69fa4ed77642421913c8dc22f659c6a0b29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3756/magpie-cli-darwin-amd64"
      sha256 "321d4e05fed1dc1515f2bff1a1d38370b6bf7d9f5b43e173c997bf1de4b04ec6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3756/magpie-cli-linux-arm64"
      sha256 "ac04cf02f2fd26e26c47e8e71a6c5828bb8bd4731ffb7a1b12b8f410b67eb6f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3756/magpie-cli-linux-amd64"
      sha256 "9092934b1ec86ed97d5ab6cbba49318e6e51f68371f4e08388fc1038592f426d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
