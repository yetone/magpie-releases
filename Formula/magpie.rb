class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4492/magpie-cli-darwin-arm64"
      sha256 "9d75452bbcde835ecb1618084743b2694eb0bcc37d094eab7afe5abd41e89c48"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4492/magpie-cli-darwin-amd64"
      sha256 "6e6b3dd065a20e36b133b1bd0dd8b4d7a5f1afed76afa4899dfb31f368b0e2e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4492/magpie-cli-linux-arm64"
      sha256 "798f7a0494fdecb26f804fd3884ba2470605c72af8c4a9ccd83255812bc1b13a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4492/magpie-cli-linux-amd64"
      sha256 "3a116e13c10d0d20a7ed74345632ea0d259bad2cb9eb857c2fac6617ee232c98"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
