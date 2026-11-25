class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4810/magpie-cli-darwin-arm64"
      sha256 "2408fd37c4c7b9886d5a5d180c01c770cf10580b979bd3c0b62cad916a142e62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4810/magpie-cli-darwin-amd64"
      sha256 "3cdedc808b6944c0bbb5748b05bf747825541d7761ecc04e3407ab9628525e19"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4810/magpie-cli-linux-arm64"
      sha256 "93a95ee73d502568380e1846af438214db6a5a5e4945e2a3f361146db920aa22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4810/magpie-cli-linux-amd64"
      sha256 "bf2912aec6a6eacc9b5210c05c589902704d6c3fc8594e2b45c7df6c9e1f28be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
