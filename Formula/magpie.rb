class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.983/magpie-cli-darwin-arm64"
      sha256 "23f52d0106e7aa8942b98a944c41fe96d352150599c7ef0a815e224c4433755b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.983/magpie-cli-darwin-amd64"
      sha256 "f21cb36656dded4998c860aac1dd2d22470931a4b8a80d5ce2f6c3edd9f1405a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.983/magpie-cli-linux-arm64"
      sha256 "cf83432fcf341bc35cb28d660421944eb8fd0c01f9abc6de2c49b6b1611fbde0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.983/magpie-cli-linux-amd64"
      sha256 "969fff4c0b3cc81d68cb7c6bac56f1a6f5ce89046b81f56ac4d3ca95f128dd61"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
