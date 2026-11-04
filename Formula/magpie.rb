class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2951/magpie-cli-darwin-arm64"
      sha256 "b05e6feec62834a41a085356cd00f9b109676bdc82bbf914d6c48ea73a958300"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2951/magpie-cli-darwin-amd64"
      sha256 "54964ea491aa749ab32040a3bb1c40d4912ab49211e2a1488d2b72f2cfb13c29"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2951/magpie-cli-linux-arm64"
      sha256 "267e85a9031a0d030c634658d72317571d4eb1f7694beda4e51ee5831a6d4ec6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2951/magpie-cli-linux-amd64"
      sha256 "3e642c30c204d4f3db1168aa198703912fe8220316d7b8fc438c76379778c8e5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
