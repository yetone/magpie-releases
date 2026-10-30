class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2152/magpie-cli-darwin-arm64"
      sha256 "faf5f7ec5a5fd82a0630f1b8be189def3a9f0c56c0a61332c0e1753c89bbcb26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2152/magpie-cli-darwin-amd64"
      sha256 "b5fda82924e04c75c4523e7fa213ef20e2a0aed1a7c28daea77e6448814ae1da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2152/magpie-cli-linux-arm64"
      sha256 "54e2bc346053519212a35d391832c8d72e52726ad92a417af8d2d9ceb9b9f333"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2152/magpie-cli-linux-amd64"
      sha256 "2d8ef9af7a1d07780acfcf048a161343b3b39cdaf864c7bad4d1f3e119235c54"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
