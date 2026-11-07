class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3209/magpie-cli-darwin-arm64"
      sha256 "597ffc87d1ff52033a4f7cfffaec06fe779feb23268e228190b96e21b12e6169"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3209/magpie-cli-darwin-amd64"
      sha256 "df01fcd8c68fd8302c5caaf2e882e9bf0a22dfd4c7e7801e0f5d10e0369ae3d0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3209/magpie-cli-linux-arm64"
      sha256 "656caa2492d0589ff4863fc60c7fd42510659aad955ca95ade95c6adf6924502"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3209/magpie-cli-linux-amd64"
      sha256 "4a752a02ee7aa701530757947f5c0498a6c7f2535b3a70a1be1bf8fed29ab8ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
