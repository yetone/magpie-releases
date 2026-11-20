class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4585/magpie-cli-darwin-arm64"
      sha256 "5d7ecb6fad7c10adefd61d241cde7c8dd32519be34386ec560c8ed2a5a1290cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4585/magpie-cli-darwin-amd64"
      sha256 "4fa1a4c16a4f23303b616e632795ac658c3f125f4edd31b5bef4a8b55405a459"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4585/magpie-cli-linux-arm64"
      sha256 "814bdeeffb800a9bca882783dc11b82758fd1be5524f088924cc642d2136e549"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4585/magpie-cli-linux-amd64"
      sha256 "dca1aed943f2bfd3df3181793ae3fb7a405eb04cd9fbd013c57c18e97a7537a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
