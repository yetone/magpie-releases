class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4139/magpie-cli-darwin-arm64"
      sha256 "70894f6ff1b0f4a32737ad18b76197a3543f4e0d1d21e9db2935978815062385"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4139/magpie-cli-darwin-amd64"
      sha256 "cdd2f846bdbfa9ff6c26fc73c231b3a2ede83b4784656283ed93f2838d80f56a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4139/magpie-cli-linux-arm64"
      sha256 "f0bc58deeba7f007e8d821830fa3512baf312b6753c943da30a9749615794646"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4139/magpie-cli-linux-amd64"
      sha256 "0211d6e60b2c51fda67df7c8f5ca69731487792bbdb9126ad27103dfa5dba3a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
