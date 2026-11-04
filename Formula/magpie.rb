class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2998/magpie-cli-darwin-arm64"
      sha256 "656dc2cad53e04bf313fedcce46c7b477ef4431db960fcceb2726a5e16013a5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2998/magpie-cli-darwin-amd64"
      sha256 "6e247a0d6e5df553e54e42684cbde6669e18efb10f569c27d05d870ef807e4f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2998/magpie-cli-linux-arm64"
      sha256 "32e132ef1a6d7f2fef59e657381fa2b44de80b606253eddf9a6646350c8ef462"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2998/magpie-cli-linux-amd64"
      sha256 "54f203ac072688f17ca44a42aa70ffb23ce4bebef80d6a046d047326dbad43c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
