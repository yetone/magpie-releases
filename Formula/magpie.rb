class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.999/magpie-cli-darwin-arm64"
      sha256 "c6be14709d7b4f2c8944facaf68a0a00c25a5d3214e98f12cc3d405828c8918c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.999/magpie-cli-darwin-amd64"
      sha256 "666ad7e1e8e33bcde0758c829cf12ac606c4c53c7e19c020478df516e8765c21"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.999/magpie-cli-linux-arm64"
      sha256 "67e5c1cf6347a0e8b15877cdd0926450b5aada951146b22e50c489ab660764b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.999/magpie-cli-linux-amd64"
      sha256 "a9612d0c0f86860c14f80fd3ee7857aec15071402ab2af6e2c9bc175d1d0f3ba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
