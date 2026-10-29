class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1975/magpie-cli-darwin-arm64"
      sha256 "6125e391c46a5083865ba9959b9effb99b572a91b34b464df984403e83f41189"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1975/magpie-cli-darwin-amd64"
      sha256 "8561154118e9545d6b0a64ec33ed08994d42ec53bada94d68788aa0f0ddda591"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1975/magpie-cli-linux-arm64"
      sha256 "62a45bba5064553604abc1ff8028a7acce12fb244aa8179a7b2f49a8c780d355"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1975/magpie-cli-linux-amd64"
      sha256 "425c6d229d3e00fe27e672a36206d757b0b43cd0cc07b7f0ae8fe5dc5e9cfa82"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
