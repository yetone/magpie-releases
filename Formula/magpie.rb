class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4712/magpie-cli-darwin-arm64"
      sha256 "4080c3f6f6d7b2e350bfd999ef2accf486ebc5192a002a93d56139a270952662"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4712/magpie-cli-darwin-amd64"
      sha256 "9c784d62685200df464173d002c54f92a6e55c73200d40a1f4cf17609778bda0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4712/magpie-cli-linux-arm64"
      sha256 "538a76e0ecc94281b5f6a9479dbf73ea2edb13f3e86be43969fd39e48f938d57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4712/magpie-cli-linux-amd64"
      sha256 "a5c7478051e85d20c7f2ef3ba7f6fb7fdf0b49ac3b447e993a737c531a9b4320"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
