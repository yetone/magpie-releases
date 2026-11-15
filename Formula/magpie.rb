class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4252/magpie-cli-darwin-arm64"
      sha256 "395a4d047be832d0238bb1d8148ccef6b8bc47b4fb7c011664912e8c021251a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4252/magpie-cli-darwin-amd64"
      sha256 "dfc607e61c36a43c0860c66730c7774fbe01b5f661754f6940e5612ca3838580"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4252/magpie-cli-linux-arm64"
      sha256 "72541b530b2a421262faf565fdaa6c30a84745a10b3db8c4dac9376861a8548c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4252/magpie-cli-linux-amd64"
      sha256 "e100a4b35f8637b71524c685a7a6c5f940b37e696913a9abd68d0dea00f5b778"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
