class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4363/magpie-cli-darwin-arm64"
      sha256 "658972c84435f2e9a7139b4c191aef9385693de5e78e049789170e2047401350"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4363/magpie-cli-darwin-amd64"
      sha256 "554022c803f86ed052787abd1349a1b37b8f30342c6928d244cb26402eaf60c2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4363/magpie-cli-linux-arm64"
      sha256 "0c75e33f8fa9fdc988261cb1d0cc4beb3a5885956de3616675b726f1687c10dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4363/magpie-cli-linux-amd64"
      sha256 "c88c615a19a60b7444f6f65c3483993eb8abf86c413917b18baddbb0a3229278"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
