class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3765/magpie-cli-darwin-arm64"
      sha256 "14b8760488e7ae7b7cc7901dfc0b931ce659acfca39e9036a735530532f15d68"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3765/magpie-cli-darwin-amd64"
      sha256 "4f7f29e8240403451a201f811f8582ef627c90cd26882f3633c2160100949008"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3765/magpie-cli-linux-arm64"
      sha256 "c033884bc18d9ab4f7346bd8d027ae09324469c795bc4514697d75f2ec36d9de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3765/magpie-cli-linux-amd64"
      sha256 "db2afafc35b8edd4f80fdac5dead7b43e695926132a5bbcbe06d7781db8bda20"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
