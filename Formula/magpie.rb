class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4605/magpie-cli-darwin-arm64"
      sha256 "520162487a45b341e3080e8b20cd8f3541a474c5f18d225a5f249ec9a35915e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4605/magpie-cli-darwin-amd64"
      sha256 "9869b441c434de3f4bfd578dedb5fc39be76c68d6a05dc2592bb31dcdd4299c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4605/magpie-cli-linux-arm64"
      sha256 "47fac8fc2c50f7b91f6585989c3f7b6fdccac58759c37c16815fbdb5b83e5cba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4605/magpie-cli-linux-amd64"
      sha256 "dbd3b718a2931357585aa493bf682cb47a9fb282235bf56a4a09557c11ff4b76"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
