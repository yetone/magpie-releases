class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3399/magpie-cli-darwin-arm64"
      sha256 "93bad8a2ba6a203364b37582a8772a6e475ffec5ffc7f2f00670bc497b2ed0fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3399/magpie-cli-darwin-amd64"
      sha256 "f2611c454a4a62ab9c21ec8e9e42c27a60fb9ea607604a6b1c08d6fc5b6292e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3399/magpie-cli-linux-arm64"
      sha256 "b1c15977a71055151c6b420aa373a36271c287b7766423b39f7ea23b23cac013"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3399/magpie-cli-linux-amd64"
      sha256 "b78ee1ad212f9131479184bda5e5f464eb08d7bd50d4d7d44e0b084b066afeb3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
