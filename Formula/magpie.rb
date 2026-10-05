class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1013/magpie-cli-darwin-arm64"
      sha256 "a0178bc5969533c22687f14777066bd631abceb3ad4172b16f77862c89e26a7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1013/magpie-cli-darwin-amd64"
      sha256 "6bb51df9a1b3c247ab4ce188bc7541bff4ff270aaf0fa089a38daa23b6e8cb8c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1013/magpie-cli-linux-arm64"
      sha256 "5f4ee01cb7da730ecda1275ec05f5488b6f08804f7993fe20c6c24d0a29f9079"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1013/magpie-cli-linux-amd64"
      sha256 "aca5c06277f8c6933cc235849b1500b3066e23fdc80e50be5ba87bc7506e4cd6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
