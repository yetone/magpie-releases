class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4282/magpie-cli-darwin-arm64"
      sha256 "6297ed1c03a8ee921eb037d8aa7a6b702f7e210d8dc15d127de36a6cece6c175"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4282/magpie-cli-darwin-amd64"
      sha256 "f48522ffdd4cdcd14df4627a872141f6ac59ca41378b4b29c34c352eedd3cdc6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4282/magpie-cli-linux-arm64"
      sha256 "3406b32ff162b8c72d56d64dba5e06cb56df8a29f8287e65d15a2b0de1510bb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4282/magpie-cli-linux-amd64"
      sha256 "7b8a23f472d5888f677df79c52b6c89b8754a4396765b5ef4606a3dcbd1c2d41"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
