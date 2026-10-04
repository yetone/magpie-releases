class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.927/magpie-cli-darwin-arm64"
      sha256 "7b3f078ca62a6faf18b0dd04094951a1d64852dfc57b018bb836d4911393000c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.927/magpie-cli-darwin-amd64"
      sha256 "36deef50ca79d49f6a7c3df5355a55dbaf508e23d96fd702d43f0b8c2b979f73"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.927/magpie-cli-linux-arm64"
      sha256 "e9cdbeab13ebab6e4ea873c1860cb542ce2a111654b0b6ff428e6586612c0aa0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.927/magpie-cli-linux-amd64"
      sha256 "5e694d6f03748ec442bfea9ab580e2ac4539b01a938bd9965cbbf7badf5a66c6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
