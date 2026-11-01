class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2563/magpie-cli-darwin-arm64"
      sha256 "4e21f07191b1c6a00e081e5d643769ca61ad13a19a9c14a13bbd5dad2b7b890a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2563/magpie-cli-darwin-amd64"
      sha256 "950703823516dee66934742d355152116efd34a5341d750f0efa739b9e2a3e9a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2563/magpie-cli-linux-arm64"
      sha256 "5637fb6d4f0e92763b1918dd5607c78b7b521fc4d7b4c7ebc333ef16679fad11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2563/magpie-cli-linux-amd64"
      sha256 "155fcc4097bbad7286a1db54af1bbbbfe9c8494108f45336fc2a8b5b7c98ec9d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
