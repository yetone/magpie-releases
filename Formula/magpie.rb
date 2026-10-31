class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2432/magpie-cli-darwin-arm64"
      sha256 "923f9a19b77fc5d765e4cfa078167da84fbe7c11fa553ad6b20a2065c15fbeef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2432/magpie-cli-darwin-amd64"
      sha256 "161f7ed8f6779ecd6dd4503fea266424fa4c52930545cd0bcf1f6d44314a1dc7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2432/magpie-cli-linux-arm64"
      sha256 "32d5a9d8e49d3ff11d7ab270f5c2a42a82f38d3d3597e09a8be960fdb5c8d7fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2432/magpie-cli-linux-amd64"
      sha256 "cbca02e8bae59ebf6c32f01f7a2a4fe5097fdf0f7684c87783bf338b47c63c4f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
