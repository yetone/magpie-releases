class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1073/magpie-cli-darwin-arm64"
      sha256 "96f0321dc937c782a1def00b876bf641855e95c4a4a31d9fd8d0cf56084037a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1073/magpie-cli-darwin-amd64"
      sha256 "73290e8fa4c11e39f329deafe4f052b2be79ae130afb5a761ef68a85068822e1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1073/magpie-cli-linux-arm64"
      sha256 "2d75d906e0fe6900df8b92b6b65bf693ce5ef4b128da3a9757cd77a609416c57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1073/magpie-cli-linux-amd64"
      sha256 "13a06bddba22062a558723ea79a3ad7f12564b7809f9c7c2e93921df1ebb1401"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
