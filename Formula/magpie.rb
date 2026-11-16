class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4312/magpie-cli-darwin-arm64"
      sha256 "5e73e2588d5cefcb73c6dec7dd824ba3a2d5edef8cbdd216f37d896ae8af97c4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4312/magpie-cli-darwin-amd64"
      sha256 "88368efd445a82eb53564e5ba92027b88cc80ad8d7f57513a17bbbb90b30c556"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4312/magpie-cli-linux-arm64"
      sha256 "ef7fe075b8155ad04fda13cb68781a0367c951a803ac400468e8a98512bd0abb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4312/magpie-cli-linux-amd64"
      sha256 "99f5dd9d10187fd0895c70f82bee15d1edbb505c50ffd31f931afdd1a84b84e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
