class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2494/magpie-cli-darwin-arm64"
      sha256 "71bd7e9e8c2deaac6d92d666f81abbe6711b646cdd8f1704f4e12fb08dfe405b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2494/magpie-cli-darwin-amd64"
      sha256 "06f26467549850e22b55a6b01c29c40e939eb54cd8c1a63be2ced3297bd03e89"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2494/magpie-cli-linux-arm64"
      sha256 "121876fe7a9754677deee89fc9d7c4103f26643a1bc831db06e5beb212306aff"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2494/magpie-cli-linux-amd64"
      sha256 "b8407afdbd8bb4861ebf0d9693f351abb8a80c809815f086cf306b974c02bdab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
