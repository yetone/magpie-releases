class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2715/magpie-cli-darwin-arm64"
      sha256 "b7d789ec2a7b7deae7032e644026af0ffbf931b87d743ebb27093aa35f2ab8fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2715/magpie-cli-darwin-amd64"
      sha256 "5c3499a7baa46a5bf61ac7bc618d6c49ffcfcf3cad785475af8d99cd4e3b371e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2715/magpie-cli-linux-arm64"
      sha256 "f48ed9cde9b387cab3b20bde76317aed380ee5889ab534a331f350cb96bf20e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2715/magpie-cli-linux-amd64"
      sha256 "cb5964e7873b712b9385b728b198a3ebf1cbdbbd31f61ac7346c23ec24079311"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
