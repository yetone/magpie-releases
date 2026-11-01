class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2643/magpie-cli-darwin-arm64"
      sha256 "f88714e3871930097fc5b1669335bfa89b2ed7b3eacdeff1a80faa8bd6d06fa4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2643/magpie-cli-darwin-amd64"
      sha256 "4854370adc76793a464c6b663dbf83aa3eec7147881fe014ef42fbd4438b96ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2643/magpie-cli-linux-arm64"
      sha256 "41ca21f1b73365990b32a45211db9bcae0ed691fef3dcc53a50a35c54e02e626"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2643/magpie-cli-linux-amd64"
      sha256 "a695aa7f7a555e59d77755afdfa2db9dca0435529c2eff9de15c67c28c69fb48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
