class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1858/magpie-cli-darwin-arm64"
      sha256 "a42e5508a0c18250c4eb77213f851fe644ebb1238e3607d481aa44b250588a32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1858/magpie-cli-darwin-amd64"
      sha256 "f67d5ae62847c9b51d3a7e8c6a3c16ef1053fd81e9c1681e8bed3b557ab5fe88"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1858/magpie-cli-linux-arm64"
      sha256 "95f04c9dc43b63bb72a9248545cc62295b265035b5bc48658511e9e0c014f213"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1858/magpie-cli-linux-amd64"
      sha256 "456ee2ed48d18f69e52aeb92912ebe27e98d6bf90432458f2fc750e722863c2b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
