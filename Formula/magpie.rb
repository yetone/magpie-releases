class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4948/magpie-cli-darwin-arm64"
      sha256 "4e731ff8fb5e8cece9dd676eb3baf141d998ab14d047ca6ab2dfc402e3f4ec90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4948/magpie-cli-darwin-amd64"
      sha256 "c87ce590c22ecc4931159a28546244102d6d8a8e19c42a8f334f78a69b394491"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4948/magpie-cli-linux-arm64"
      sha256 "79d4fe7efccf444bdae059eb464ec6c5eda4bb1e3a49b3e2fabca8883b50c82a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4948/magpie-cli-linux-amd64"
      sha256 "7eeffafa6d97317e6d327aeed8682fa86fd9243682b39d5e97c5bbd20659adf8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
