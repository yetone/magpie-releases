class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4927/magpie-cli-darwin-arm64"
      sha256 "389aca1fa432a4f9e1aadd216b74d01e2ffc58d277483b74bcc72f79bc004187"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4927/magpie-cli-darwin-amd64"
      sha256 "9296ae33d69423ebcc8081c87cf1f1c5fdb511570f2be2755e58482d376fc064"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4927/magpie-cli-linux-arm64"
      sha256 "f0161e4c92464a7f701a0c03a446487c887a858410dff929c9f0295b3c0e4c2f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4927/magpie-cli-linux-amd64"
      sha256 "725fe610bc919b8524e2e9fda38380c9a6d1210dd6bb6986b24d66df19d43e87"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
