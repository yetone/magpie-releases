class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5053/magpie-cli-darwin-arm64"
      sha256 "9c50b62d872e1c25c67df4d7af98c2aca48afff583a1c847d1ea0df46de450a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5053/magpie-cli-darwin-amd64"
      sha256 "899bb5301198a614789271bb30e9a82bb0b1d6290495db356af0b4531f3c4b24"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5053/magpie-cli-linux-arm64"
      sha256 "03e1d0b4df72ee48a1744d8cf1d52157a4d18f9e601a983c71414acfff7250aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.5053/magpie-cli-linux-amd64"
      sha256 "55929fd052ba0aa9db91c3a3c5e3530523bdee6d7a6fd557822ac022a63a185d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
