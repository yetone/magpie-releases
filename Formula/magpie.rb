class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3426/magpie-cli-darwin-arm64"
      sha256 "3042b294afb316c105b772a8c75e5ed3f1225d36745e2f4bd6c66f504fda005f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3426/magpie-cli-darwin-amd64"
      sha256 "0d87b887e46b2bccb0ec092a5c628b942f09fcea4542786e19cca4a927039de3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3426/magpie-cli-linux-arm64"
      sha256 "cd0f76eece772b34382e41da8fd460555a0efa5273c94a1159111079fe4b8db5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.3426/magpie-cli-linux-amd64"
      sha256 "bd3d8174ed4d467637280225fb3e8d56eefa57b7bea776e5a99a1b22a9f8f2ed"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
