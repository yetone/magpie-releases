class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3219/magpie-cli-darwin-arm64"
      sha256 "7b9a5f4bf844a5815f1f319897eb7f5e4b0c16f05d41b6e144a3ab0689bb833f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3219/magpie-cli-darwin-amd64"
      sha256 "4091703c92396930b441eff26efbe736fb2516b1dce776a4a7c79254999273f4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3219/magpie-cli-linux-arm64"
      sha256 "8232c5bdd3efceb01243a51ad6c7fc1cc425b52aedfa6a29e1eebd3289b276ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3219/magpie-cli-linux-amd64"
      sha256 "53a3a445d47b95ee33240171dcb1cbe94b81c742ebcd76ab4e4b5212432d3cba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
