class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2777/magpie-cli-darwin-arm64"
      sha256 "257eb76f8b882a571e82d27c968df1c5ed123807d1460826ff2760fd35611033"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2777/magpie-cli-darwin-amd64"
      sha256 "ae6bfd26d56c1d8e376b245ca13f6535631d55310724f8ced66b9bff959cdc09"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2777/magpie-cli-linux-arm64"
      sha256 "56bbc8d3a85df8d602044e6b8d3d5f3306ea97a36d56632ab45d4fb6ec11578f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2777/magpie-cli-linux-amd64"
      sha256 "d1b6e0cecb2462447c259cdb0080ad1711fb21a775ded7305b68c268b7bac0be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
