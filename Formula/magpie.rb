class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3283/magpie-cli-darwin-arm64"
      sha256 "f4a50d529a16bad0806b61db9e1b8739153eae3b8ba0b639d6c056dba4518838"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3283/magpie-cli-darwin-amd64"
      sha256 "6761c7cb8398e025751fcaa8731473efa46923514788891274774574cc92c06c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3283/magpie-cli-linux-arm64"
      sha256 "ccf965d2164fdb948dac0c260bbf9ce95f60a17d21f970eb77d3486e05a56fec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3283/magpie-cli-linux-amd64"
      sha256 "07579709b14fad83bd2a24f7c4ad365b810887bb11bf1958c7f82c75d5cd6c11"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
