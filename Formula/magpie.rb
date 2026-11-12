class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3820/magpie-cli-darwin-arm64"
      sha256 "2eaabdb2e3b9695740506e547e0a30309e70b9240d9482ab3f11d605659b3285"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3820/magpie-cli-darwin-amd64"
      sha256 "8e82c9c5890b30ae539dba3db2436ac370f9ea56cbd847212c17534e22d211fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3820/magpie-cli-linux-arm64"
      sha256 "e5f8948547a0af98e5d78d60e4238b4781825a6e044a5faabd041da7182212f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3820/magpie-cli-linux-amd64"
      sha256 "7eef652a33d8cae42a0f78475fa9ed969d60900ee45caea04777f64f2cbd65e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
