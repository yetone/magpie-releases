class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4852/magpie-cli-darwin-arm64"
      sha256 "f89a78a8fda3e350cf07a53e32d045e6a8a48fd6c3be5898a8ba0e3eab2ec449"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4852/magpie-cli-darwin-amd64"
      sha256 "715fa78ab022102ee130ad75af597a8a3893307884e6d4d1aefcc6faaf6f7741"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4852/magpie-cli-linux-arm64"
      sha256 "b82e65c4c8a7892eb9ad88f6bfb85778c05715db2f23346668c33071bfc5b279"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.4852/magpie-cli-linux-amd64"
      sha256 "c911deb930c4bf25c253f89ae4b083b347344eca932dbe45b03a56e7a2b13e36"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
