class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4909/magpie-cli-darwin-arm64"
      sha256 "8c770cd5f068a482baab8d7ec94a3f2a1effabea9fbe59e739a72aca8b6cc194"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4909/magpie-cli-darwin-amd64"
      sha256 "1ddc8fa2e9dc1b4748cc6d72cb8defabe8f757e76ed1532c19fcb58f55dd57c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4909/magpie-cli-linux-arm64"
      sha256 "ea63ba14b29e0c0e9a6f13788a0733f40b1a6942b34a3937b085f9237fd1c698"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4909/magpie-cli-linux-amd64"
      sha256 "1c52643bcd9ec1e541abae6f82d136530ddb43a8643e1f5db6b3583fc9061607"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
