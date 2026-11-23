class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4715/magpie-cli-darwin-arm64"
      sha256 "8b3914abfc852e99b2121feeb7ffa820bd80983b612dcd333f251baf11524c1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4715/magpie-cli-darwin-amd64"
      sha256 "eb07a4ed9c6e0bccef8a501551821140e8c49b63d51c4dafefc9c900757f9de0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4715/magpie-cli-linux-arm64"
      sha256 "6247f10a229bc8c8d0d8d21e3f77adb6a4494e561f43c9393f31d23a4e901b42"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4715/magpie-cli-linux-amd64"
      sha256 "daf902627b2ff179369fc6981704747e86a65fc62fe1ca38ca107ac33c563a7e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
