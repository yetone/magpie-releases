class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4073/magpie-cli-darwin-arm64"
      sha256 "84e5f8b61702fdecab2e4b813314a6f2a5a1501f61f19f0e343100c2dcdb0271"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4073/magpie-cli-darwin-amd64"
      sha256 "c287d0dddd5af9506b821edac2fc581a78af13ce68430833c70ee3a8d9a02b32"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4073/magpie-cli-linux-arm64"
      sha256 "cb9b8bd161420d1f579b9fc60f1bb0e1c850888e64274c337fea6691ddb6a51b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4073/magpie-cli-linux-amd64"
      sha256 "b9682d457e28c44956cd7178180a957426ca3151861a2f46350efe72f45f9899"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
