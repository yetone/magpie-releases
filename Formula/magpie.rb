class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2850/magpie-cli-darwin-arm64"
      sha256 "1631212bfef35247cf4fd078bfd99e5ff6255f60550ba503e2cc8913d3dad7b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2850/magpie-cli-darwin-amd64"
      sha256 "f8a611c722535d252bd526d47b7d01a9a426ab9d0f9261c3cd76bcf6f0a0aa75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2850/magpie-cli-linux-arm64"
      sha256 "57c7fc7c5644b3ea3fac6289c66b6f2a8b4577dd6e867b255090799bd00ac19e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2850/magpie-cli-linux-amd64"
      sha256 "3c472b19814571cf87972b8150e40372c9ccc38b8598367d0948b09d01f80be6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
