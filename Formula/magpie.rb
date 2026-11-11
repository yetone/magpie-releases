class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3678/magpie-cli-darwin-arm64"
      sha256 "91e07a02e44193199826aae2d61d7baef6663dd0fb2b15091c6e24770fd24d31"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3678/magpie-cli-darwin-amd64"
      sha256 "087bd3326bcde43cd73cb0cd075c0fda9afabcab9ea8f2bf64f1625447a32863"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3678/magpie-cli-linux-arm64"
      sha256 "910b8c848dc232f9c43f0f0b132baf4f1fba9604ef8113eebb8938a5065132da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3678/magpie-cli-linux-amd64"
      sha256 "7a8af42aa530fc184eb037d0ad50e7c4e8610c2b43a3ff381025f3db8ffc2bc5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
