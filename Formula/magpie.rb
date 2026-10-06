class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1087/magpie-cli-darwin-arm64"
      sha256 "d3c95f06ddb3fc097f659244150bdf8131bcf0849721fe888f5ffaf24f025caa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1087/magpie-cli-darwin-amd64"
      sha256 "3103a830201b26597edd21de3bafc449b030ce9a8a51596b9008e348b75cffc9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1087/magpie-cli-linux-arm64"
      sha256 "14d289dc239788af598567ff1e074845828059fd7272ca9ce59f75a489bed98f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1087/magpie-cli-linux-amd64"
      sha256 "c4b101c3f74cb4c1361da934690975832a28562b00d9747caea4b9f4147d9922"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
