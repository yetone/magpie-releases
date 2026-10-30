class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2133/magpie-cli-darwin-arm64"
      sha256 "b880cd339ad62d84fed1598e13122348e967652c5a7002ad2ec2ae8e01ff7c8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2133/magpie-cli-darwin-amd64"
      sha256 "951ee8947a8d3481eac002ebdbeb9167b8fc932b979fbc55730eb002c54797d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2133/magpie-cli-linux-arm64"
      sha256 "c5a8fa667feba6a2e5c2c54f1a0f3e36ebc2618a8da7dbe1c53ad137c3378dd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2133/magpie-cli-linux-amd64"
      sha256 "1326b37c9a080c28e9c015275bf00a8a999f3ca2bb85ef0496e3def0bc7491bc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
