class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4295/magpie-cli-darwin-arm64"
      sha256 "def3e01c1ca2b7bed9ec9861ba0565bab17d7b70355a98a44fad5221c45f93a6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4295/magpie-cli-darwin-amd64"
      sha256 "58fdbb61ff1c041c7fe6b89b2575c3a5fe08a16594db210d13d72f258108a984"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4295/magpie-cli-linux-arm64"
      sha256 "c325484bf96923c17b76a267429e187d5310d4e01688280484bfb6a408f2ba37"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4295/magpie-cli-linux-amd64"
      sha256 "ee9377bd88e9b3fac8152cc7cd38419c85611be0fe960ac2938ce7b32fcd12e4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
