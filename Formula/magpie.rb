class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4419/magpie-cli-darwin-arm64"
      sha256 "0c677f60542eb57f1a1823fcec8bf1ad4a441481edddfcf259da1f3e59a0b1a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4419/magpie-cli-darwin-amd64"
      sha256 "0e63326843747815435cd969218d5ba1cd3d3fca00344ce3012317702eba7e14"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4419/magpie-cli-linux-arm64"
      sha256 "8a9ff912907628aa3ec98c6b702c79b95e3155e5b24791d2b351eea8325d3779"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4419/magpie-cli-linux-amd64"
      sha256 "035381266e6d5dfeb740348903a545f15f1b83fa8a4aad2f4cc44e6622f8bb38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
