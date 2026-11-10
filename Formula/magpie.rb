class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3493/magpie-cli-darwin-arm64"
      sha256 "c67171a2596718dbe8a607f1556aea38d9f1667b9c2c5ffb081d6a7033748825"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3493/magpie-cli-darwin-amd64"
      sha256 "6d2960aaae7dae7ec940dfbf576ea261a9f72a1d715b0c7ebddd8dacfa869274"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3493/magpie-cli-linux-arm64"
      sha256 "0a6254d2db4308436142afb52a7e47480a36ea251d335445574835f6e3f47e77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3493/magpie-cli-linux-amd64"
      sha256 "d58888f8574e9591d1fb75c4e62541b842f11496eec98cf5c5827097af8506ef"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
