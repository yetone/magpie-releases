class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3931/magpie-cli-darwin-arm64"
      sha256 "61219cd36a9b62cef63cb82fa066f982b0ce3eaf7b1536c9ac05ca7898524275"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3931/magpie-cli-darwin-amd64"
      sha256 "34f7f9878829c0e8e3edd5dc16b6bbb5ec61652a7b20b63f217c7d196abd1027"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3931/magpie-cli-linux-arm64"
      sha256 "c249f853453a8bfeab27f7a47f9ad132b1223ad1aa5258ea87329e7d6eda0854"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3931/magpie-cli-linux-amd64"
      sha256 "ad5c4d74774c702cf2bea0b2d86e37850462ab4751d24bf37073cd33c7df45e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
