class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4614/magpie-cli-darwin-arm64"
      sha256 "f92a2b23ff53d48c0707ea4124f35e975cf09f7754db71c976b7b32e9e382740"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4614/magpie-cli-darwin-amd64"
      sha256 "cb6e72991188ca0c566e96e5f73383d10e032622da98cbea0951fcd3c2f465ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4614/magpie-cli-linux-arm64"
      sha256 "9149588759e2643470fcdc88ece591b4e0bc0c23608252ec52eba8a8e215363b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4614/magpie-cli-linux-amd64"
      sha256 "38bde4f8e92cda1dbb7fda85e474f0d2b0de90e6ec6bbe06f82f3ad36f013892"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
