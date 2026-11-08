class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3341/magpie-cli-darwin-arm64"
      sha256 "5f074e4a2972bfd28848348c9dbabb10d54c73a56e7389bdf957c16e19b1556a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3341/magpie-cli-darwin-amd64"
      sha256 "a4421012569712a7c3c7272f1e0a2df49704c4fca13437535a4fc5c5105de631"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3341/magpie-cli-linux-arm64"
      sha256 "8f4930dee7ab4e05699654f2d0798b9e944e58de7c2f343e8de077313609ee30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3341/magpie-cli-linux-amd64"
      sha256 "39c628a76195d86d061fdb0bef8aa25c4889e9433b88a031aa9fe591c1f8f712"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
