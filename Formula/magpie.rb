class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2362/magpie-cli-darwin-arm64"
      sha256 "97176acada82631b464a1bab033bdcb0f0a279ee2b41f5bd90a1db1026c26502"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2362/magpie-cli-darwin-amd64"
      sha256 "e48e196bccb6830de3325d91e5f3a69278a3ef3dfc84f4c646f2322be49b7674"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2362/magpie-cli-linux-arm64"
      sha256 "958a60e3719afca91e2eb0f1545662442259f62ab84792266ef1d7a38465fcd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.2362/magpie-cli-linux-amd64"
      sha256 "148e6a40785a0bdf3df6643641eda5f11456f86915782c936951e3363f108348"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
