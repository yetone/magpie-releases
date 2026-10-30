class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2151/magpie-cli-darwin-arm64"
      sha256 "6921b82c174356274bc2081932bd23210f2adcd0ce3b67056c54ebd710190173"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2151/magpie-cli-darwin-amd64"
      sha256 "bc7501f2f1de2f5d5ae3fed6a7488e2e4797acc29fca81d1665e9f951c2f4ea2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2151/magpie-cli-linux-arm64"
      sha256 "e51f791da98feac862e7fc7bc738d730f77250ce45393d7728a2aec845a7cae2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2151/magpie-cli-linux-amd64"
      sha256 "72ae98897a478a2e21a44ce0ea8cf2613091f42c3f92bb27ea72eb6661792056"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
